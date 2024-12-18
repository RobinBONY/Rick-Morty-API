import 'package:flutter/material.dart';
import 'package:flutter_application/src/api/models/character.dart';
import 'package:flutter_application/src/api/services/characters/get_characters.dart';

import '../settings/settings_view.dart';
import 'sample_item_details_view.dart';

/// Displays a list of SampleItems.

class SampleItemListView extends StatefulWidget {
  const SampleItemListView({super.key});

  static const routeName = '/';

  @override
  State<SampleItemListView> createState() => _SampleItemListViewState();
}

class _SampleItemListViewState extends State<SampleItemListView> {
  late List<Character>? _items;

  int page = 1;

  final _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    _controller.addListener(() {
      if (_controller.position.atEdge && _controller.position.pixels != 0) {
        CharacterService().getCharactersPage(page++).then((result) => _items=  result);
      }
    });
    return FutureBuilder(
      future: CharacterService().getCharactersPage(page++),
      builder: (context, snapshot) {
        if(snapshot.hasData) {
          _items = snapshot.data;
          return Scaffold(
            appBar: AppBar(
              title: const Text('Personnages'),
              actions: [
                IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () {
                    Navigator.restorablePushNamed(context, SettingsView.routeName);
                  },
                ),
              ],
            ),

            body: ListView.builder(
              controller: _controller,
              restorationId: 'sampleItemListView',
              itemCount: _items?.length,
              itemBuilder: (BuildContext context, int index) {
                final item = _items?[index];
                return ListTile(
                  title: Text(item!.name),
                  leading: CircleAvatar(

                    foregroundImage: NetworkImage(item.image),
                  ),
                  onTap: () {
                    Navigator.restorablePushNamed(
                      context,
                      SampleItemDetailsView.routeName,
                    );
                  }
                );
              },
            ),
          );
        }
        else {
          return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            LinearProgressIndicator(
              semanticsLabel: 'Linear progress indicator',
            ),
          ],
        ),
      ),
    );
        }
      },
      
    );
  }
}
