import 'package:flutter/material.dart';

class GridScreen extends StatelessWidget {
  static const String path = "GridScreen";

  final List<Color> color = [
    Colors.green,
    Colors.orange,
    Colors.yellow,
    Colors.purple,
    Colors.pink
  ];

  final List<String> name = [
    "Mehedi",
    "Hasan",
    "Nirob",
    "Sojal",
    "XYZ"
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("GridView"),),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: EdgeInsets.all(10),
        children:List.generate(5, (index) {
          return GridTile(
            header: Text("Header"),
            child: FlutterLogo(),
            footer: Text("Footer"),
          );
          // return Container(
          //   width: 100,
          //   height: 100,
          //   color: color[index],
          //   child: Text(name[index])
          // );
        })
      )
    );
  }
}