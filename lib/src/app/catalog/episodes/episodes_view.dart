import 'package:flutter/material.dart';
import 'package:flutter_application/src/app/catalog/episodes/expansion_episodes_view.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class EpisodesView extends HookWidget {
  const EpisodesView({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialiser le ScrollController avec useScrollController
    final seasons = List<ExpansionEpisodesView>.generate(
        5, (i) => ExpansionEpisodesView(index: i + 1));

    return ListView.builder(
      itemCount: seasons.length,
      itemBuilder: (context, index) {
        final item = seasons[index];
        return item;
      },
    );
  }
}
