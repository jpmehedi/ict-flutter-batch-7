import 'package:flutter/material.dart';
import 'package:news_app/home_screen.dart';
import 'package:news_app/screens/all.dart';
import 'package:news_app/screens/details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.path,
      routes: {
        HomeScreen.path: (ctx)=> HomeScreen(),
        AllNews.path: (ctx)=> AllNews(),
        DetailScreen.path: (ctx)=> DetailScreen()
      },
    );
  }
}

