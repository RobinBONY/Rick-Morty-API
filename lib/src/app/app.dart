import 'package:flutter/material.dart';
import 'package:flutter_application/src/api/models/character.dart';
import 'package:flutter_application/src/app/favorites/favorites_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'catalog/catalog_view.dart';
import 'home/home_view.dart';
import 'sample_feature/sample_item_details_view.dart';
import 'sample_feature/sample_item_list_view.dart';
import 'search/search_view.dart';
import 'settings/settings_controller.dart';
import 'settings/settings_view.dart';

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
    required this.settingsController,
  });

  final SettingsController settingsController;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var favorites = <Character>[];

  void toggleFavorite([Character? character]) {
    if (favorites.contains(character)) {
      favorites.remove(character);
    } else if (character != null) {
      favorites.add(character);
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: widget.settingsController,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          home: NavigationBar(
            onDestinationSelected: (value) => print(value),
            destinations: [
              NavigationDestination(icon: Icon(Icons.explore), label: 'Catalogue'),
              NavigationDestination(icon: Icon(Icons.search), label: 'Recherche'),
              NavigationDestination(icon: Icon(Icons.home), label: 'Menu'),
              NavigationDestination(icon: Icon(Icons.bookmark), label: 'Favoris'),
              NavigationDestination(icon: Icon(Icons.settings), label: 'Paramètres'),
            ],
          ),
          restorationScopeId: 'app',
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''),
          ],
          onGenerateTitle: (BuildContext context) =>
              AppLocalizations.of(context)!.appTitle,
          theme: ThemeData(),
          darkTheme: ThemeData.dark(),
          themeMode: widget.settingsController.themeMode,
          onGenerateRoute: (RouteSettings routeSettings) {
            return MaterialPageRoute<void>(
              settings: routeSettings,
              builder: (BuildContext context) {
                switch (routeSettings.name) {
                  case SettingsView.routeName:
                    return SettingsView(controller: widget.settingsController);
                  case CatalogView.routeName:
                    return const CatalogView();
                  case SearchView.routeName:
                    return const SearchView();
                  case FavoritesView.routeName:
                    return const FavoritesView();
                  case HomeView.routeName:
                  default:
                    return HomeView();
                }
              },
            );
          },
        );
      },
    );
  }
}
