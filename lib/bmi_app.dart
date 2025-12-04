import 'package:bmi_calculator/screens/home_screen.dart';
import 'package:flutter/material.dart';

class BmiApp extends StatelessWidget {
  const BmiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xff1c2135),
      ),
      home: HomeScreen(),
    );
  }
}
