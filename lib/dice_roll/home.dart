import 'package:flutter/material.dart';
import 'package:dice_roll/dice_roll/dice_roll.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const DiceRoll();
  }
}
