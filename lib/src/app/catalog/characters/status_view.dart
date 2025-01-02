import 'package:flutter/material.dart';

class StatusView extends StatelessWidget {
  const StatusView({
    required String status,
    required String species,
    super.key}) : _species = species, _status = status;

  final String _status;
  final String _species;

  @override
  Widget build(BuildContext context) {
    Color color = Colors.grey;
    switch (_status) {
      case ('Alive'):
        color = Colors.green;
      case ('Dead'):
        color = Colors.red;
      case ('unknown'):
      default:
    }
    
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 6,
          backgroundColor: color,
        ),
        Text(' $_status - $_species'),
      ],
    );
  }
}