import 'package:bdfoodrecipe/screen/details/detail.dart';
import 'package:bdfoodrecipe/screen/favorite.dart';
import 'package:bdfoodrecipe/screen/home/home.dart';
import 'package:bdfoodrecipe/screen/video/video.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodie',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.path,
      routes: {
        HomeScreen.path: (ctx)=> HomeScreen(),
        DetailScreen.path: (ctx)=>DetailScreen(),
        YoutubeScreen.path: (ctx)=>YoutubeScreen(),
          Favorite.path: (ctx)=>Favorite(),
        
      },
    );
  }
}

