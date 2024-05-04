import 'package:flutter/material.dart';

class Playername extends StatelessWidget {
  String text;
   Playername({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            text,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
