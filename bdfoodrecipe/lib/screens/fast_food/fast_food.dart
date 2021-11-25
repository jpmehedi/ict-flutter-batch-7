import 'package:bdfoodrecipe/data.dart';
import 'package:bdfoodrecipe/global/functions.dart';
import 'package:bdfoodrecipe/widget/custom_grid_tile.dart';
import 'package:flutter/material.dart';

class FastFoodScreen extends StatelessWidget {
 final List fastFood = bdfood["fast_food"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: customGridDelegate(),
      padding: EdgeInsets.all(10),
      itemCount: fastFood.length,
      itemBuilder: (BuildContext context, int index){
        return CustomGridTile(
          imageUrl: fastFood[index]["image"],
          title: fastFood[index]["title"],
        );
      }
    );
  }
}