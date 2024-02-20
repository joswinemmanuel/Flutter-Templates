import 'dart:math';
import 'package:flutter/material.dart';
import 'package:roll_dice/shadowed_text.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 300,
        ),
        const SizedBox(
          height: 40,
        ),
        OutlinedButton(
          onPressed: rollDice,
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.all(15.0),
            elevation: 2,
            backgroundColor: const Color.fromARGB(249, 114, 114, 114),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: const ShadowedText('ROLL DICE'),
        ),
      ],
    );
  }
}
