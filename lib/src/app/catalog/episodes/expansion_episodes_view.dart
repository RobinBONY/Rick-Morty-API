import 'package:flutter/material.dart';
import 'package:flutter_application/src/graphql/query/episode.graphql.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class ExpansionEpisodesView extends HookWidget {
  const ExpansionEpisodesView({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Query(
        options: QueryOptions(
          document: documentNodeQueryFetchSeason,
          variables: {
            'filter': {'episode': "S0$index"},
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

          return ExpansionTile(
            title: Text("Saison 0$index"),
            subtitle: Text('Tap to expand'),
            leading: Icon(Icons.folder),
            trailing: Icon(Icons.expand_more),
            children: [
              ListView.builder(
                shrinkWrap: true, // Prevent unbounded height error
                physics: NeverScrollableScrollPhysics(),
                itemCount: episodes.length,
                itemBuilder: (context, index) {
                  final episode = episodes[index];
                  return ListTile(
                    title: Text(episode['name']),
                    subtitle: Text(episode['episode']),
                  );
                },
              )
            ],
          );
        });
  }
}
