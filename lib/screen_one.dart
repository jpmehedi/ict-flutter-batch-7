import 'package:demo_project/screen_two.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
 static final String path = "ScreenOne";
  ScreenOne({ Key? key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen One"),),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(context, ScreenTwo.path);
          }, 
          child: Text("Screen One")
        ),
      ),
    );
  }
}