// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fitness_tracker_app/pages/home/widgets/recent.dart';
import 'package:fitness_tracker_app/pages/home/widgets/current.dart';
import 'package:fitness_tracker_app/pages/home/widgets/header.dart';
import 'package:fitness_tracker_app/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppHeader(),
          CurrentPrograms(),
          RecentActivities(),
          BottomNavigation(),
        ],
      ),
    );
  }
}
