import 'package:flutter/material.dart';
import 'package:untitled1/Calculator_Screen.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: "Flutter",
      home: CalculatorScreen(),
    );

  }

}