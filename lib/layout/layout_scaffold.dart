import 'package:flutter/material.dart';
import 'package:flutter_application/router/models/destination.dart';
import 'package:go_router/go_router.dart';

class LayoutScaffold extends StatelessWidget {
  const LayoutScaffold({
    required this.navigationShell,
    Key ? key,
  }): super(key:key ?? const ValueKey<String>('LayoutScaffold'));

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) => Scaffold(
    body: navigationShell,
    bottomNavigationBar: NavigationBar(
      selectedIndex: navigationShell.currentIndex,
      onDestinationSelected: navigationShell.goBranch,
      destinations: destinations.map((destination) => NavigationDestination(
        icon: Icon(destination.icon),
        label: destination.label,
        )).toList(),
    ),
  );
}