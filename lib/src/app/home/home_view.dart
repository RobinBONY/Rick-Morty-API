import 'package:flutter/material.dart';
import 'package:flutter_application/rick_and_morty_api.dart';
import 'package:flutter_application/src/app/catalog/characters/character_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static const routeName = '/';

  @override
  State<StatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Character? _character;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadInitialCharacter();
  }

  Future<void> _loadInitialCharacter() async {
    setState(() {
      isLoading = true;
    });
    final initialCharacter = await CharacterService().getCharacter(1);
    setState(() {
      _character = initialCharacter;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    // Check if _character is null as a safety measure
    if (_character == null) {
      return const Center(
        child: Text("Character data not available"),
      );
    }
    return CharacterCard(character: _character!); // Use non-null assertion
  }
}
