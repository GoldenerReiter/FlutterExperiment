import 'dart:math';

import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-2.png';
  var currentDiceRoll = 3;
  void rollDice() {
    currentDiceRoll = Random().nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'assets/images/dice-$currentDiceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        activeDiceImage,
        width: 250,
      ),
      const SizedBox(
        height: 20,
      ),
      ElevatedButton(
        onPressed: rollDice,
        style: ElevatedButton.styleFrom(),
        child: const StyledText('Roll Dice', Colors.black),
      )
    ]);
  }
}
