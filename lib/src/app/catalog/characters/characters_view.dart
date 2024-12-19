import 'package:flutter/material.dart';
import 'package:flutter_application/rick_and_morty_api.dart';
import 'package:flutter_application/src/app/catalog/characters/character_card.dart';

class CharactersView extends StatefulWidget{
  const CharactersView({super.key});

  @override
  State<StatefulWidget> createState() => _CharactersViewState();
}

class _CharactersViewState extends State<CharactersView> {
  final _controller = ScrollController();

  List<Character> _characters = [];
  int page = 1;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadInitialCharacters();
    _controller.addListener(_onScroll);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _loadInitialCharacters() async {
    setState(() {
      isLoading = true;
    });
    final initialCharacters = await CharacterService().getCharactersPage(page++);
    setState(() {
      _characters = initialCharacters;
      isLoading = false;
    });
  }

  Future<void> _loadMoreCharacters() async {
    if (isLoading) return;
    setState(() {
      isLoading = true;
    });
    final moreCharacters = await CharacterService().getCharactersPage(page++);
    setState(() {
      _characters.addAll(moreCharacters);
      isLoading = false;
    });
  }

  void _onScroll() {
    if (_controller.position.atEdge && _controller.position.pixels != 0) {
      _loadMoreCharacters();
    }
  }

  @override
  Widget build(BuildContext context) {
    _controller.addListener(() {
      if (_controller.position.atEdge && _controller.position.pixels != 0) {
        CharacterService().getCharactersPage(page++).then((result) => _characters =  result);
      }
    });
    return  GridView(
        addAutomaticKeepAlives: true,
        padding: const EdgeInsets.all(20),
        controller: _controller,
        restorationId: 'charactersGridView',
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          for ( var character in _characters ) CharacterCard(character: character)
        ],
    );
  }
  
}