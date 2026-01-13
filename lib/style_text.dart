import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
   const StyledText(this.text, {super.key});

  //final String text;

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 80,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}
