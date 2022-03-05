import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.advice,
      @required this.result,
      @required this.resultText});
  final String result;
  final String resultText;
  final String advice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator',style: TextStyle(
          color: Color(0xFF114455),
          fontSize: 30.0,
        ),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Color((0xFFffffff)),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: TextStyle(
                        color: Color(0xFF114455),
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    result,
                    style: TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF114455)),
                  ),
                  Text(
                    advice,
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF114455)),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              margin: EdgeInsets.all(10.0),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              alignment: Alignment.center,
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF114455)
                  ),
                ),
              ),
              color: Color(0xFFffffff),
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.all(10.0),
              width: double.infinity,
              height: 80.0,
            ),
          ),
        ],
      ),
    );
  }
}
