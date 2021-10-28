
import 'package:demo_project/screen_one.dart';
import 'package:demo_project/screen_three.dart';
import 'package:demo_project/screen_two.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(
    MaterialApp(
      title: "Demo App",
      debugShowCheckedModeBanner: false,
      initialRoute: ScreenOne.path,
      routes: {
        ScreenOne.path : (context)=> ScreenOne(),
        ScreenTwo.path: (context)=> ScreenTwo(),
        ScreenThree.path : (context)=> ScreenThree()
      },
    ),
  );
}



