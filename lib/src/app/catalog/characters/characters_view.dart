import 'package:flutter/material.dart';
import 'package:flutter_application/src/graphql/query/character.graphql.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class CharactersView extends HookWidget {
  const CharactersView({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialiser le ScrollController avec useScrollController
    final scrollController = useScrollController();

    return Query(
      options: QueryOptions(
        document: documentNodeQueryFetchCharacters,
        variables: {
          'page': 1, // Variable de pagination initiale
        },
      ),
      builder: (QueryResult result,
          {VoidCallback? refetch, FetchMore? fetchMore}) {
        if (result.isLoading && result.data == null) {
          return Center(child: CircularProgressIndicator());
        }

        var data = result.data;
        var queryData = Query$FetchCharacters.fromJson(data!);

        var results = queryData.characters?.results ?? [];
        var pageInfo = queryData.characters?.info;

        if (results.isEmpty) {
          return Center(child: Text('Aucun personnage trouvé.'));
        }

        // Listener pour fetchMore quand on atteint la fin de la liste
        useEffect(() {
          scrollController.addListener(() {
            if (scrollController.position.pixels ==
                    scrollController.position.maxScrollExtent &&
                fetchMore != null &&
                queryData.characters?.info.next != null) {
              fetchMore(FetchMoreOptions(
                  updateQuery: (previousResultData, fetchMoreResultData) {
                    final List<dynamic> res = [
                      ...previousResultData?['characters']['results'],
                      ...fetchMoreResultData?['characters']['results'],
                    ];

                    previousResultData?['characters']['results'] = res;

                    return previousResultData;
                  },
                  variables: {
                    'page': pageInfo!.next,
                  }));
            }
          });
          return scrollController.dispose; // Nettoyage
        }, [scrollController, fetchMore]);

        return ListView.builder(
          controller: scrollController,
          itemCount: results.length,
          itemBuilder: (context, index) {
            final character = results[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(character!.image),
              ),
              title: Text(character.name),
              subtitle: Text(
                'Status: ${character.status}\nSpecies: ${character.species}',
              ),
            );
          },
        );
      },
    );
  }
}
