// ignore_for_file: prefer_const_constructors

import 'package:fitness_tracker_app/pages/details/details.dart';
import 'package:fitness_tracker_app/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const HomePage(),
        "/details": (context) => const DetailsPage(),
      },
      initialRoute: "/",
      title: 'Fitness Tracker',
      theme: ThemeData(
        fontFamily: "Roboto",
        textTheme: TextTheme(
          displaySmall: TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
