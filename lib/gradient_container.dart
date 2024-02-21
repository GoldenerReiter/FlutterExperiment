import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colours});

  GradientContainer.purpleRed(
      {super.key}) // a way of creating default constructor function values
      : colours = [Colors.deepPurple, Colors.redAccent];

  final List<Color> colours;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colours,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      child: Center(child: DiceRoller()),
    );
  }
}
