
import 'package:demo_project/profile.dart';
import 'package:flutter/material.dart';


void main () {
  runApp(
    MaterialApp(
      title: "Demo App",
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   fontFamily: "Lobster",
      // ),
      // home: HomePage()
      home: ProfileScreen(),
    ),
  );
}



