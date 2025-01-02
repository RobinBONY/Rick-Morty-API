import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/src/graphql/query/location.graphql.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class LocationsView extends HookWidget {
  const LocationsView({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();

    return Query(
      options: QueryOptions(
        document: documentNodeQueryFetchLocations,
        variables: {
          'page': 1,
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
          return Center(child: Text('Aucun lieu trouvé.'));
        }

        final List<dynamic> locations =
            (result.data?['locations']['results'] as List<dynamic>);

        final Map pageInfo = result.data?['locations']['info'];

        final int? next = pageInfo['next'];

        FetchMoreOptions opts = FetchMoreOptions(
          variables: {
            'page': next,
          },
          updateQuery: (previousResultData, fetchMoreResultData) {
            final List<dynamic> res = [
              ...previousResultData?['locations']['results'],
              ...fetchMoreResultData?['locations']['results'],
            ];

            fetchMoreResultData?['locations']['results'] = res;

            return fetchMoreResultData;
          },
        );

        return NotificationListener<ScrollEndNotification>(
          onNotification: (t) {
            if (scrollController.position.pixels ==
                    scrollController.position.maxScrollExtent &&
                fetchMore != null &&
                next != null) {
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
                itemCount: locations.length,
                itemBuilder: (context, index) {
                  final location = locations[index];
                  return ListTile(
                    title: Text(location['name']),
                    subtitle: Text(
                      'Type: ${location['type']}\nDimension: ${location['dimension']}',
                    ),
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
