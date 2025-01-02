import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/src/graphql/query/episode.graphql.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class EpisodesView extends HookWidget {
  const EpisodesView({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialiser le ScrollController avec useScrollController
    final scrollController = useScrollController();

    return Query(
      options: QueryOptions(
        document: documentNodeQueryFetchEpisodes,
        variables: {
          'page': 1, // Variable de pagination initiale
        },
      ),
      builder: (QueryResult result,
          {VoidCallback? refetch, FetchMore? fetchMore}) {
        if (result.isLoading && result.data == null) {
          return Center(child: CircularProgressIndicator());
        }

        if (result.hasException) {
          return Text('\nErrors: \n  ${result.exception}');
        }

        if (result.data == null) {
          return Center(child: Text('Aucun épisode trouvé.'));
        }

        final List<dynamic> episodes =
            (result.data?['episodes']['results'] as List<dynamic>);

        final Map pageInfo = result.data?['episodes']['info'];
        
        final int? next = pageInfo['next'];

        FetchMoreOptions opts = FetchMoreOptions(
          variables: {
            'page': next,
          },
          updateQuery: (previousResultData, fetchMoreResultData) {
            final List<dynamic> res = [
              ...previousResultData?['episodes']['results'],
              ...fetchMoreResultData?['episodes']['results'],
            ];

            fetchMoreResultData?['episodes']['results'] = res;

            return fetchMoreResultData;
          },
        );

        return NotificationListener<ScrollEndNotification>(
          onNotification: (t) {
            if (scrollController.position.pixels ==
                    scrollController.position.maxScrollExtent &&
                fetchMore != null && next != null) {
              fetchMore(opts);
            }
            return true;
          },
          child: RefreshIndicator(
            onRefresh: () async {
              if (refetch != null) {
                refetch();
              }
              await Future.delayed(Duration(seconds: 3));
            },
            child: ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(
                dragDevices: {
                  PointerDeviceKind.touch,
                  PointerDeviceKind.mouse,
                },
              ),
              child: ListView.builder(
                controller: scrollController,
                itemCount: episodes.length,
                itemBuilder: (context, index) {
                  final episode = episodes[index];
                  return ListTile(
                    title: Text(episode['name']),
                    subtitle: Text(episode['episode']),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
