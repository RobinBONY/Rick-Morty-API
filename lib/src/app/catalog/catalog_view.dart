import 'package:flutter/material.dart';
import 'package:flutter_application/src/app/catalog/characters/characters_view.dart';
import 'package:flutter_application/src/app/catalog/episodes/episodes_view.dart';
import 'package:flutter_application/src/app/catalog/locations/locations_view.dart';

class CatalogView extends StatefulWidget{
  const CatalogView({super.key});

  static const routeName = '/catalog';

  @override
  State<CatalogView> createState() => _CatalogViewState();
}

class _CatalogViewState extends State<CatalogView> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Catalogue'),
          bottom: TabBar(
            controller: _tabController,
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
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            CharactersView(),
            EpisodesView(),
            LocationsView(),
          ],
        ),
      );
  }
}