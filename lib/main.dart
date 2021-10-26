
import 'package:demo_project/counter_app.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main () {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType){
        return MaterialApp(
        title: "Demo App",
        debugShowCheckedModeBanner: false,
        home: CounterApp(),
       );
      }
    )
  );
}



