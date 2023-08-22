import 'package:dice_roll/dice_roller.dart';
import 'package:flutter/material.dart';

const startFrom = Alignment.topLeft;
const endTo = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: colors, begin: startFrom, end: endTo),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
