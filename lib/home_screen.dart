import 'package:bmi_calculator/calculate_page.dart';
import 'package:bmi_calculator/constt.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

int agee = 20;
int weight = 55;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// ignore: non_constant_identifier_names
double bmi_calculator() {
  double h = (heighttt / 100);
  return (weight / (h * h));
}

int heighttt = 120;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: darkblue,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        maleecolor = malecolor;
                        female = darkblue;
                      });
                    },
                    child: ReuseContainer(
                      heightt: 180,
                      n: 2.19,
                      colorr: maleecolor,
                      radiuss: 10,
                      modify: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.mars,
                            size: 80,
                            color: Colors.white,
                          ),
                          Text("Male", style: styletext),
                        ],
                      ),
                    ),
                  ), //this particular reuse container is from male section in 1st row
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        maleecolor = darkblue;
                        female = malecolor;
                      });
                    },
                    child: ReuseContainer(
                      heightt: 180,
                      n: 2.19,
                      colorr: female,
                      radiuss: 10,
                      modify: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.venus,
                            size: 80,
                            color: Colors.white,
                          ),
                          Text("Female", style: styletext),
                        ],
                      ),
                    ),
                  ), //this particular reuse container is for female section in 1st row
                ], //this is the main row children end point so if you want to add any thing inside the first row add inside this
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ReuseContainer(
                heightt: 180,
                n: 1,
                colorr: malecolor,
                radiuss: 10,
                modify: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Height", style: styletext),
                    Text("${heighttt}cm", style: styletext),
                    Slider(
                      value: heighttt.toDouble(),
                      min: 100,
                      max: 200,
                      onChanged: (value) {
                        setState(() {
                          heighttt = value.round();
                        });
                      },
                    ),
                  ],
                ),
              ), //this particular reuse container is for the Height_Slider section full means Column below male female row
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ReuseContainer(
                    heightt: 180,
                    n: 2.19,
                    colorr: malecolor,
                    radiuss: 10,
                    modify: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Age", style: styletext),
                        Text("${agee}y/o", style: styletext),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white70,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  agee--;
                                });
                              },
                              child: FaIcon(
                                FontAwesomeIcons.minus,
                                color: Colors.black,
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white70,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  agee++;
                                });
                              },
                              child: FaIcon(
                                FontAwesomeIcons.add,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ReuseContainer(
                    heightt: 180,
                    n: 2.19,
                    colorr: malecolor,
                    radiuss: 10,
                    modify: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Weight", style: styletext),
                        Text("${weight}kg", style: styletext),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white70,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),

                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              child: FaIcon(
                                FontAwesomeIcons.minus,
                                color: Colors.black,
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white70,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: FaIcon(
                                FontAwesomeIcons.add,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ], //this is the main row children end point so if you want to add any thing inside the 2nd row below Height_Slider add inside this
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),

                onPressed: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CalculatePage()),
                    );
                  });
                },
                child: ReuseContainer(
                  heightt: 80,
                  n: 1,
                  colorr: Colors.transparent,
                  radiuss: 10,
                  modify: Center(
                    child: Text("Calculate BMI", style: styletext),
                  ),
                ),
              ),
            ),
          ], //this is the main column children end point so if you want to add any thing inside the home screen add inside this   // Children of the main Column
        ), //this is the main column children end point so if you want to add any thing inside the home screen add inside this
      ),
    );
  }
}

double ans = bmi_calculator();

class ReuseContainer extends StatefulWidget {
  final double heightt;
  final double n;
  final Color colorr;
  final double radiuss;
  // ignore: prefer_typing_uninitialized_variables
  final Widget modify;
  const ReuseContainer({
    super.key,
    required this.heightt,
    required this.n,
    required this.colorr,
    required this.radiuss,
    required this.modify,
  });

  @override
  State<ReuseContainer> createState() => _ReuseContainerState();
}

class _ReuseContainerState extends State<ReuseContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.heightt,
      width: MediaQuery.of(context).size.width / widget.n,
      decoration: BoxDecoration(
        color: widget.colorr,
        borderRadius: BorderRadius.circular(widget.radiuss),
      ),
      child: widget.modify,
    );
  }
}
