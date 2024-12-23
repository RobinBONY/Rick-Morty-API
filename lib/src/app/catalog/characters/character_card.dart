import 'package:flutter/material.dart';
import 'package:flutter_application/rick_and_morty_api.dart';
import 'package:flutter_application/src/app/catalog/characters/status_view.dart';
import 'package:google_fonts/google_fonts.dart';

class CharacterCard extends StatefulWidget {
  const CharacterCard({
    required this.character,
    super.key
    });

  final Character character;

  @override
  State<CharacterCard> createState() => _CharacterCardState();
}

class _CharacterCardState extends State<CharacterCard> {
  bool isHovered = false;
  
  
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child:  Scaffold(
        body: Center(
          child: MouseRegion(
            onEnter: (value) {
              setState(() {
                isHovered = true;
              });
            },
            onExit: (value) {
              setState(() {
                isHovered = false;
              });
            },
            child: Container(
              height: 420.0,
              width: 320.0,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 36, 35, 35),
                borderRadius: BorderRadius.circular(15.0),
              ),
              clipBehavior: Clip.antiAlias,
              child: Stack(
                children: [
                  Positioned(
                    left: -40.0,
                    top: 155.0,
                    child: Text(
                      widget.character.name,
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                        fontSize: 150.0,
                        color: Colors.white10,
                      ),
                      softWrap: false,
                    ),
                  ),
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 575),
                    curve: Curves.easeOut,
                    top: isHovered ? -60.0 : -40.0,
                    right: isHovered ? -15.0 : -40.0,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 575),
                      curve: Curves.easeOut,
                      height: isHovered ? 350.0 : 280.0,
                      width: isHovered ? 350.0 : 280.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage(widget.character.image), fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(500),
                      ),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 775),
                    curve: Curves.easeOut,
                    bottom: isHovered ? 0.0 : -100.0,
                    child: Container(
                      color: const Color.fromARGB(255, 36, 35, 35),
                      child: SizedBox(
                        height: 200.0,
                        width: 320.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              widget.character.name,
                              style: GoogleFonts.quicksand(
                                fontSize: 30.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            StatusView(status: widget.character.status, species: widget.character.species),
                            const SizedBox(
                              height: 5.0,
                            ),
                            AnimatedOpacity(
                              opacity: isHovered ? 1.0 : 0.0,
                              duration: isHovered
                                  ? const Duration(milliseconds: 575)
                                  : const Duration(milliseconds: 375),
                              curve:
                                  isHovered ? Curves.easeInOutBack : Curves.easeOut,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Last known location: ',
                                    style: GoogleFonts.quicksand(
                                      fontSize: 18.0,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    widget.character.location.name,
                                    style: GoogleFonts.quicksand(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 50.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: isHovered
                        ? const Duration(milliseconds: 800)
                        : const Duration(milliseconds: 500),
                    bottom: isHovered ? 20.0 : -100.0,
                    curve: isHovered ? Curves.easeInCubic : Curves.easeOut,
                    child: AnimatedOpacity(
                      opacity: isHovered ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 1075),
                      curve: Curves.easeOut,
                      child: SizedBox(
                        width: 320.0,
                        child: Center(
                          child: ElevatedButton(
                            onPressed: null, 
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.favorite),
                                Text(
                                  'Like',
                                  style: GoogleFonts.quicksand(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}