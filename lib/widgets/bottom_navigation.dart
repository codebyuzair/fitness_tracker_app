// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 60,
        color: const Color(0xfff8f8f8),
        child: IconTheme(
          data: IconThemeData(color: Color(0xffabadb4)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.add_chart),
              Icon(Icons.search),
              Transform.translate(
                offset: Offset(0, -15),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed("/");
                  },
                  child: Container(
                      padding: EdgeInsets.all(13),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [
                              Colors.purple.shade200,
                              Colors.purple.shade300,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(3, 3),
                              blurRadius: 3,
                            )
                          ]),
                      child: Icon(
                        Icons.home_rounded,
                        color: Colors.white,
                      )),
                ),
              ),
              Icon(Icons.date_range),
              IconButton(
                icon: Icon(Icons.settings_outlined),
                onPressed: () {
                  Navigator.of(context).pushNamed("/details");
                },
              ),
            ],
          ),
        ));
  }
}
