import 'package:bmi_calculator/constt.dart';
import 'package:bmi_calculator/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 40,
          backgroundColor: AppBarBackgroundcolor,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: Center(
              child: Text(
                "BMI Calculator",
                style: TextStyle(color: Colors.white, fontSize: 32),
              ),
            ),
          ),
        ),

        body: HomeScreen(),
      ),
    );
  }
}
