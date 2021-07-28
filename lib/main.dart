import 'Resultpage.dart';
import 'package:flutter/material.dart';
import 'bmical.dart';
import 'Resultpage.dart';
import 'route/route.dart' as route;

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        accentColor: Colors.black38,
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white),
        ),
      ),
      onGenerateRoute: route.controller,
      initialRoute: route.first,
    );
  }
}
