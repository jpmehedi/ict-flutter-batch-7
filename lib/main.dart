import 'package:flutter/material.dart';


void main () {
  runApp(
    MaterialApp(
      title: "Demo App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Lobster",
      ),
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
              // fontFamily: "Lobster",
              letterSpacing: 5,
              // fontStyle: FontStyle.italic
            ),
          ),
        ),

        // body: Center(
        //  child: Text(
        //    "The quick brown fox jumps over the lazy dog",
        //    style: TextStyle(
        //      fontFamily: "SourceCodePro"
        //    ),
        //  )
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
        
        // body: Center(
        //   child: CircleAvatar(
        //     radius: 80,
        //     backgroundImage: NetworkImage("https://picsum.photos/250?image=9"),
        //   ),
        // ),
        
        body: Center(
          child: Icon(
            Icons.photo,
            color: Colors.red,
            size: 200,
          ),
        ),
      
      
      
      ),
    ),
  );
}