import 'package:bdfoodrecipe/data.dart';
import 'package:bdfoodrecipe/global/functions.dart';
import 'package:bdfoodrecipe/widget/custom_grid_tile.dart';
import 'package:flutter/material.dart';

class DessertScreen extends StatelessWidget {
  final List dessert = bdfood["dessert"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: customGridDelegate(),
      padding: EdgeInsets.all(10),
      itemCount: dessert.length,
      itemBuilder: (BuildContext context, int index){
        return CustomGridTile(
          imageUrl: dessert[index]["image"],
          title: dessert[index]["title"],
        );
      }
    );
  }
}