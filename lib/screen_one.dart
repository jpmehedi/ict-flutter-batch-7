import 'package:demo_project/screen_two.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
 static final String path = "ScreenOne";
  ScreenOne({ Key? key });
  String name = "Mehedi";
  int age = 39;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen One"),),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            // Navigator.pushNamed(context, ScreenTwo.path, arguments: [name, age]);
            Navigator.pushNamed(context, ScreenTwo.path, arguments:{"name": name, "age": age});
          }, 
          child: Text("Screen One")
        ),
      ),
    );
  }
}