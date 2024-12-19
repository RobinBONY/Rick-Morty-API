import 'package:flutter/material.dart';
import 'package:flutter_application/src/app/catalog/characters/characters_view.dart';
import 'package:flutter_application/src/app/catalog/episodes/episodes_view.dart';
import 'package:flutter_application/src/app/catalog/locations/locations_view.dart';

class CatalogView extends StatelessWidget{
  const CatalogView({super.key});

  static const routeName = '/catalog';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Sample'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.groups),
              ),
              Tab(
                icon: Icon(Icons.video_library),
              ),
              Tab(
                icon: Icon(Icons.public),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            CharactersView(),
            EpisodesView(),
            LocationsView(),
          ],
        ),
      );
  }
}