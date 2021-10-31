
import 'package:demo_project/screen_one.dart';
import 'package:demo_project/screen_three.dart';
import 'package:demo_project/screen_two.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(
    MaterialApp(
      title: "Demo App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Lobster",
        primaryColor: Colors.orange,
        primaryColorDark: Colors.black,
        brightness: Brightness.light,
        cardColor: Colors.yellow,
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal
        ),
        textTheme: TextTheme(
          headline1: TextStyle(fontSize:32, fontWeight: FontWeight.bold, color: Colors.purple ),
          bodyText1: TextStyle(fontSize: 12, color: Colors.green)
        )
      
      ),

      darkTheme: ThemeData(
        fontFamily: "Lobster",
        primaryColor: Colors.black,
        primaryColorDark: Colors.black,
        brightness: Brightness.dark,
        cardColor: Colors.yellow,
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal
        ),
        textTheme: TextTheme(
          headline1: TextStyle(fontSize:32, fontWeight: FontWeight.bold, color: Colors.white ),
          bodyText1: TextStyle(fontSize: 12, color: Colors.white)
        )
      
      ),
      themeMode: ThemeMode.light,
      initialRoute: ScreenOne.path,
      routes: {
        ScreenOne.path : (context)=> ScreenOne(),
        ScreenTwo.path: (context)=> ScreenTwo(),
        ScreenThree.path : (context)=> ScreenThree()
      },
    ),
  );
}



