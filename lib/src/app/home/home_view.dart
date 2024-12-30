import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static const routeName = '/';

  @override
  State<StatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
    setState(() {
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
    return Placeholder(); // Use non-null assertion
  }
}


// final _controller = ScrollController();
//   final getCharacters = Query$FetchCharacters().fetch_characters;

//   List<Character> _characters = getCharacters;
//   int page = 1;
//   bool isLoading = false;

//   @override
//   void initState() {
//     super.initState();
//     _loadInitialCharacters();
//     _controller.addListener(_onScroll);
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   Future<void> _loadInitialCharacters() async {
//     setState(() {
//       isLoading = true;
//     });
//     setState(() {
//       isLoading = false;
//     });
//   }
//   void _onScroll() {
//     if (_controller.position.atEdge && _controller.position.pixels != 0) {
//       //  TODO: load more
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     _controller.addListener(() {
//       if (_controller.position.atEdge && _controller.position.pixels != 0) {
//         _onScroll();
//       }
//     });
//     return  Placeholder();
//   }
  
