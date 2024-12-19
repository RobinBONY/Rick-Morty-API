import 'package:flutter/material.dart';
import 'package:flutter_application/layout/layout_scaffold.dart';
import 'package:flutter_application/src/app/catalog/catalog_view.dart';
import 'package:flutter_application/src/app/favorites/favorites_view.dart';
import 'package:flutter_application/src/app/home/home_view.dart';
import 'package:flutter_application/src/app/search/search_view.dart';
import 'package:flutter_application/src/app/settings/settings_controller.dart';
import 'package:flutter_application/src/app/settings/settings_view.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

GoRouter createRouter(SettingsController settingsController) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: HomeView.routeName,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => LayoutScaffold(
          navigationShell: navigationShell,
        ),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: CatalogView.routeName,
                builder: (context, state) => CatalogView(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: SearchView.routeName,
                builder: (context, state) => SearchView(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: HomeView.routeName,
                builder: (context, state) => HomeView(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: FavoritesView.routeName,
                builder: (context, state) => FavoritesView(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: SettingsView.routeName,
                builder: (context, state) => SettingsView(controller: settingsController),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
                 