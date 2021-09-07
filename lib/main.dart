import 'package:flutter/material.dart';

void main () {
  runApp(
    MaterialApp(
      title: "Demo App",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Hello Bangladesh", 
            style: TextStyle(
              // color: Colors.red,
              color: Color(0xffff0000),
              fontSize: 28,
              // fontWeight: FontWeight.bold,
              fontWeight: FontWeight.w700,
              fontFamily: "Arial",
              letterSpacing: 5,
              fontStyle: FontStyle.italic
            ),
          ),
        ),
      ),
    ),
  );
}