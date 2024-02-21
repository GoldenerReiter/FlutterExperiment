import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, this.colour, {super.key});

  final String text;
  final Color colour;

  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(color: colour, fontSize: 28.0),
    );
  }
}
