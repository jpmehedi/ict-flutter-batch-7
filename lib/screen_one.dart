import 'package:demo_project/screen_two.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen One"),),
      body: Center(
        child: ElevatedButton(
          onPressed: (){

             Navigator.push(context, MaterialPageRoute(builder: (context)=> ScreenTwo()));

            // Route route = MaterialPageRoute(builder: (context)=> ScreenTwo());
            // Navigator.push(context, route);

            // Navigator.push(context, MaterialPageRoute(builder: (context){
            //  return ScreenTwo();
            // }));

          }, 
          child: Text("Screen One")
        ),
      ),
    );
  }
}