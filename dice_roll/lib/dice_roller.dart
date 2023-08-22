import 'dart:math';

import 'package:flutter/material.dart';

final randomize = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomize.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$currentDiceRoll.png",
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton(
          onPressed: rollDice,
          style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.all(10),
              foregroundColor: Colors.white,
              backgroundColor: Colors.red,
              textStyle: const TextStyle(
                fontSize: 20,
              )),
          child: const Text(
            "Roll Dice",
            style: TextStyle(color: Colors.black),
          ),
        )
      ],
    );
  }
}
