// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:fitness_tracker_app/pages/details/widgets/appbar.dart';
import 'package:fitness_tracker_app/pages/details/widgets/dates.dart';
import 'package:fitness_tracker_app/pages/details/widgets/graph.dart';
import 'package:fitness_tracker_app/pages/details/widgets/info.dart' hide Stats;
import 'package:fitness_tracker_app/pages/details/widgets/stats.dart';
import 'package:fitness_tracker_app/pages/details/widgets/steps.dart';
import 'package:fitness_tracker_app/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(appBar: AppBar()),
      body: Column(
        children: [
          Dates(),
          Steps(),
          Graph(),
          Info(),
          Stats(),
          BottomNavigation(),
        ],
      ),
    );
  }
}
