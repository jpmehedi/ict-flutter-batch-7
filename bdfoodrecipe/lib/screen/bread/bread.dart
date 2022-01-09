import 'package:bdfoodrecipe/data.dart';
import 'package:bdfoodrecipe/global/functions.dart';
import 'package:bdfoodrecipe/screen/details/detail.dart';
import 'package:bdfoodrecipe/widget/custom_grid_tile.dart';
import 'package:flutter/material.dart';

class Bread extends StatelessWidget {
 final List bread = bdfood["bread"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: customGridDelegate(), 
      itemCount: bread.length,
      padding: EdgeInsets.all(15),
      itemBuilder: (BuildContext context, int index){
        return CustomGridTile(
          onTap: (){
            Navigator.pushNamed(context, DetailScreen.path, arguments:  {"category": "Bread", "data": bread[index]});
          },
          imageUrl: bread[index]["image"],
          title: bread[index]["title"],
          totalIngredients: countIngredients(bread[index]["ingredients"]),
        );
      }
    );
  }
}