import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'result_page.dart';
import 'calculator_brain.dart';

const inactiveCardColor = Color(0xFFffffff);
const activeCardColor = Color(0xFF4ba0bc);
const activeIconColor = Color(0xFFffffff);
const inactiveIconColor = Color(0xFF114455);
const activeTextColor = Color(0xFFffffff);
const inactiveTextColor = Color(0xFF114455);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int height = 180;
  int weight = 60;
  int age = 20;

  Color maleColor = inactiveCardColor;
  Color femaleColor = inactiveCardColor;

  Color maleIcon = inactiveIconColor;
  Color femaleIcon = inactiveIconColor;
  Color maleText = inactiveTextColor;
  Color femaleText = inactiveTextColor;

  void updateColor(int gender) {
    if (gender == 1) {
      if (maleColor == inactiveCardColor) {
        maleColor = activeCardColor;
        maleIcon = activeIconColor;
        maleText= activeTextColor;
        femaleColor = inactiveCardColor;
        femaleIcon = inactiveIconColor;
        femaleText = inactiveTextColor;
      } else {
        maleColor = inactiveCardColor;
      }
    }
    if (gender == 2) {
      if (femaleColor == inactiveCardColor) {
        femaleColor = activeCardColor;
        femaleIcon = activeIconColor;
        femaleText = activeTextColor;
        maleColor = inactiveCardColor;
        maleIcon = inactiveIconColor;
        maleText = inactiveTextColor;
      } else {
        femaleColor = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator' , style: TextStyle(
          color: Color(0xFF114455),
          fontSize: 30.0,
        ),),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: maleColor,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.mars,
                            size: 80.0,
                            color: maleIcon,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'Male',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: maleText,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: femaleColor,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.venus,
                            size: 80.0,
                            color: femaleIcon,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'FEMALE',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: femaleText,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Color(0xFFffffff),
                  borderRadius: BorderRadius.circular(20.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Height',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Color(0xFF114455),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: TextStyle(
                            fontSize: 50.0,
                            color: Color(0xFF114455),
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(color: Color(0xFF114455)),
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 100.0,
                    max: 220.0,
                    activeColor: Color(0xFF111111),
                    inactiveColor: Color(0xFF114455),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Weight',
                          style: TextStyle(color: Color(0xFF114455),
                          fontSize: 20.0),
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF114455)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF114455),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.remove,
                                    size: 30.0, color: Colors.white),

                                onPressed: () {
                                  setState(() {
                                    if (weight <= 0) {
                                      print('weight cannot be minus 1 !!');
                                    } else {
                                      weight--;
                                    }
                                  });
                                },
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF114455),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.add,
                                    size: 30.0, color: Colors.white),
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFffffff),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Age',
                          style: TextStyle(color: Color(0xFF114455),
                              fontSize: 20.0),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF114455)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF114455),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.remove,
                                    size: 30.0, color: Colors.white),

                                onPressed: () {
                                  setState(() {
                                    if (age <= 0) {
                                      print('age cannot be minus 1 !!');
                                    } else {
                                      age--;
                                    }
                                  });
                                },
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF114455),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.add,
                                    size: 30.0, color: Colors.white),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFffffff),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);
              Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage(
                result: calc.calculateBMI(),
                resultText: calc.getResult(),
                advice: calc.getAdvice(),
              ) ,
              ),
              );
            },
            child: Container(
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF114455)),
                ),
              ),
              color: Color(0xFFffffff),
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.only(bottom: 10.0),
              width: double.infinity,
              height: 80.0,
            ),
          ),
        ],
      ),
    );
  }
}