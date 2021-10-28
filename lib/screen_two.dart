import 'package:demo_project/screen_three.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  static final String path = "ScreenTwo";
  const ScreenTwo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final data = ModalRoute.of(context)!.settings.arguments as List;
    final data = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){

          }, 
          icon: Icon(Icons.arrow_back_ios),
        ),
        automaticallyImplyLeading: false,
        title: Text("Screen Two"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text("Name: ${data[0]} Age: ${data[1]}"),
            Text("Name: ${data["name"]} Age: ${data["age"]}"),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, ScreenThree.path);
              }, 
              child: Text("Screen Two")
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child: Text("Back")
            ),
          ],
        ),
      ),
    );
  }
}