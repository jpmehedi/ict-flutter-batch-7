

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "I'm poor", 
            style: TextStyle(
              color: Color(0xffff0000),
              fontSize: 28,
              fontWeight: FontWeight.w700,
              letterSpacing: 5,
            ),
          ),
        ),
        
        body: Center(
          child: Icon(
            Icons.photo,
            color: Colors.red,
            size: 200,
          ),
        ),
      );
  }
}