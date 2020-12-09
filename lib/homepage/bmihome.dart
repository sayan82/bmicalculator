import 'package:bmicalculator/BMIcalculator.dart';
import 'package:bmicalculator/Resultpage/Resultpage.dart';
import 'package:bmicalculator/homepage/homepagecontainers.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:holding_gesture/holding_gesture.dart';

class Bmihome extends StatefulWidget {
  @override
  _BmihomeState createState() => _BmihomeState();
}

class _BmihomeState extends State<Bmihome> {
  Gender selectedgender;
  int height = 150;
  int weight = 50;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(FontAwesomeIcons.slidersH),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
                icon: Icon(FontAwesomeIcons.user),
                onPressed: () {
                  print('Profile');
                }),
          )
        ],
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Mycontainer(
                        onpressed: () {
                          setState(() {
                            selectedgender = Gender.male;
                          });
                        },
                        color: (selectedgender == Gender.male)
                            ? Color(0xFB1F233D)
                            : Color(0xB90A0E21),
                        child: MycontainerIconData(
                          icon: FontAwesomeIcons.male,
                          text: 'MALE',
                        )),
                  ),
                  Expanded(
                    child: Mycontainer(
                        onpressed: () {
                          setState(() {
                            selectedgender = Gender.female;
                          });
                        },
                        color: (selectedgender == Gender.female)
                            ? Color(0xFB1F233D)
                            : Color(0xB90A0E21),
                        child: MycontainerIconData(
                          icon: FontAwesomeIcons.female,
                          text: 'FEMALE',
                        )),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Mycontainer(
                  color: Color(0xFB1F233D),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("HEIGHT"),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          Text(
                            height.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 45),
                          ),
                          Text("cm"),
                        ],
                      ),
                      SliderTheme(
                        data: SliderThemeData(
                            trackHeight: 1,
                            inactiveTrackColor: Colors.grey,
                            overlayColor: Colors.white.withOpacity(0.3),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 20),
                            activeTrackColor: Colors.red,
                            thumbColor: Colors.white),
                        child: Slider(
                            value: height.toDouble(),
                            onChanged: (sliderval) {
                              setState(() {
                                height = sliderval.round();
                              });
                            },
                            min: 100.0,
                            max: 220.0),
                      )
                    ],
                  )),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Mycontainer(
                      color: Color(0xFB1F233D),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'WEIGHT',
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 45),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              HoldDetector(
                                enableHapticFeedback: true,
                                holdTimeout: Duration(milliseconds: 100),
                                onHold: () {
                                  if (weight < 250) {
                                    setState(() {
                                      weight++;
                                    });
                                  }
                                },
                                child: IncDecButton(
                                  icon: FontAwesomeIcons.plus,
                                  onpressed: () {
                                    if (weight < 250) {
                                      setState(() {
                                        weight++;
                                      });
                                    }
                                  },
                                ),
                              ),
                              HoldDetector(
                                enableHapticFeedback: true,
                                holdTimeout: Duration(milliseconds: 100),
                                onHold: () {
                                  if (weight > 5) {
                                    setState(() {
                                      weight--;
                                    });
                                  }
                                },
                                child: IncDecButton(
                                  icon: FontAwesomeIcons.minus,
                                  onpressed: () {
                                    if (weight > 5) {
                                      setState(() {
                                        weight--;
                                      });
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Mycontainer(
                      color: Color(0xFB1F233D),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'AGE',
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 45),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              HoldDetector(
                                enableHapticFeedback: true,
                                holdTimeout: Duration(milliseconds: 100),
                                onHold: () {
                                  if (age < 100) {
                                    setState(() {
                                      age++;
                                    });
                                  }
                                },
                                child: IncDecButton(
                                  icon: FontAwesomeIcons.plus,
                                  onpressed: () {
                                    if (age < 100) {
                                      setState(() {
                                        age++;
                                      });
                                    }
                                  },
                                ),
                              ),
                              HoldDetector(
                                enableHapticFeedback: true,
                                holdTimeout: Duration(milliseconds: 100),
                                onHold: () {
                                  if (age > 1) {
                                    setState(() {
                                      age--;
                                    });
                                  }
                                },
                                child: IncDecButton(
                                  icon: FontAwesomeIcons.minus,
                                  onpressed: () {
                                    if (age > 1) {
                                      setState(() {
                                        age--;
                                      });
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomButton(
        buttontext: "Calculate",
        onpressed: () {
          CalculatorBrain calc =
              CalculatorBrain(height: height, weight: weight);

          if (selectedgender != null || height == null || weight == null) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ResultPage(
                          bmivalue: calc.calculateBMI(),
                          bmistatus: calc.getResult(),
                          staustextcolor: calc.getColor(),
                          suggestion: calc.getSuggestion(),
                        )));
          } else {
            showCupertinoModalPopup(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 50,
                    child: Scaffold(
                      body: Center(
                        child: Container(
                          child: Text(
                            "Please! Select Your Gender",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                                fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  );
                });
          }
        },
      ),
    );
  }
}
