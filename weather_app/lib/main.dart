import 'package:flutter/material.dart';
import 'package:weather_app/screens/details.dart';
import 'package:weather_app/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // home: DetailsScreen(),
      initialRoute: HomeScreen.path,
      routes: {
        HomeScreen.path: (ctx)=> HomeScreen(),
        DetailsScreen.path: (ctx)=> DetailsScreen()
      },
   );
  }
}

