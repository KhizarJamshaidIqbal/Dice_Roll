import 'package:flutter/material.dart';
import 'dart:math';

int currentDiceRoll = 4;

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});
  @override
  State<DiceRoll> createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  void diceRoll() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/DiceRoll_$currentDiceRoll.png',
            height: 100,
            width: 100,
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextButton(
            onPressed: diceRoll,
            child: const Text(
              'Dice Roll',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
