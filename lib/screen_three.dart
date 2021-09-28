import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Screen Three"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
          child: Text("Back")
        ),
      ),
    );
  }
}