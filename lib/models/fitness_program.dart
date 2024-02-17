import 'package:flutter/material.dart';

enum ProgramType {
  cardio,
  lift,
}

class FitnessProgram {
  final AssetImage image;
  final String name;
  final String cals;
  final String time;
  final ProgramType type;

  FitnessProgram({
    required this.type,
    required this.image,
    required this.cals,
    required this.time,
    required this.name,
  });
}

final List<FitnessProgram> fitnessProgram = [
  FitnessProgram(
    image: const AssetImage("images/running.jpg"),
    cals: "220kcal",
    time: "20min",
    name: "Cardio",
    type: ProgramType.cardio,
  ),
  FitnessProgram(
    image: const AssetImage("images/weight.jpg"),
    cals: "220kcal",
    time: "20min",
    name: "Barbel arm Lift",
    type: ProgramType.lift,
  ),
];
