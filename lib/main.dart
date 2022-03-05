import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme:ThemeData.dark().copyWith(
          primaryColor: Color(0xFFffffff),
          scaffoldBackgroundColor: Color(0xFF114455)
      ),
      home:HomePage() ,
    );
  }
}
