import 'package:bmi_calculator/constt.dart';
import 'package:bmi_calculator/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CalculatePage extends StatefulWidget {
  const CalculatePage({super.key});

  @override
  State<CalculatePage> createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  get bmi => bmi_calculator();
  Color color = Colors.transparent;

  String bmiascategory() {
    if (bmi < 18) {
      color = Colors.red;
      return "UnderWeight";
    } else if (bmi > 25) {
      color = Colors.red;
      return "OverWeight";
    } else {
      color = Colors.green;
      return "Normal";
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor: darkblue,
        scaffoldBackgroundColor: darkblue,
      ),

      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          backgroundColor: AppBarBackgroundcolor,
          centerTitle: true,
          title: Title(
            color: Colors.white,
            child: Text("Result", style: styletext),
          ),
        ),
        backgroundColor: darkblue,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Container(
                margin: EdgeInsets.all(10),
                height: 250,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: malecolor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Result", style: styletext),
                    ),
                    Text("BMI = ${bmi.toStringAsFixed(2)}", style: styletext),
                    Text(
                      bmiascategory(),
                      style: styletext.copyWith(color: color, fontSize: 60),
                    ),
                  ],
                ),
              ),
            ),
            FaIcon(FontAwesomeIcons.male, size: 350, color: color),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),

                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                child: ReuseContainer(
                  heightt: 80,
                  n: 1,
                  colorr: Colors.transparent,
                  radiuss: 10,
                  modify: Center(
                    child: Text("Calculate Again", style: styletext),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
