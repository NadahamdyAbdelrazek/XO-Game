import 'package:flutter/material.dart';

import 'home/X0_Screen.dart';
import 'home/login.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: "Flutter",
      initialRoute: login.routename,
      routes: {
        login.routename:(context) =>login(),
        XoGame.routename:(context) => XoGame(),
      },
    );

  }

}
