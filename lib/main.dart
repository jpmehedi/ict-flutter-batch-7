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
            "I'm poor", 
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
        // body: Center(
        //  child: Image.asset(
        //     "assets/poor_man.png",
        //    height: 200, 
        //    width: 200,
        //  ),
        // ),

        // body: Center(
        //   child: Image.network(
        //     "https://picsum.photos/250?image=9",
        //     height: 100,
        //     width: 100,
        //   ),
        // ),

        // body: Center(
        //   child: CircleAvatar(
        //     radius: 80,
        //     backgroundImage: AssetImage("assets/poor_man.png"),
        //   ),
        // ),

        
        body: Center(
          child: CircleAvatar(
            radius: 80,
            backgroundImage: NetworkImage("https://picsum.photos/250?image=9"),
          ),
        ),

      
      
      
      ),
    ),
  );
}