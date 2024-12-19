import 'package:flutter/material.dart';

class Destination {
  const Destination ({required this.label, required this.icon});

  final String label;
  final IconData icon;
}

const destinations = [
  Destination(label: 'Catalogue', icon: Icons.explore),
  Destination(label: 'Recherche', icon: Icons.search),
  Destination(label: 'Menu', icon: Icons.home),
  Destination(label: 'Favoris', icon: Icons.bookmark),
  Destination(label: 'Paramètres', icon: Icons.settings),
];