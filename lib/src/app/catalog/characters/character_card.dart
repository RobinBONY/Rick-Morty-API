import 'package:flutter/material.dart';
import 'package:flutter_application/rick_and_morty_api.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({
    required this.character,
    super.key
    });

  final Character character;
  
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image(image: NetworkImage(character.image)),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Title(color: Theme.of(context).primaryColor, child: Text(character.name)),
              Text('$character.status - $character.species'),
              Divider(),
              Text(
                'Origine',
                style: TextStyle(fontStyle: FontStyle.italic).copyWith(color: Theme.of(context).hintColor),
              ),
              Text(character.origin.name),
            ],
          ),
        ],
      ),
    );
  }
  
}