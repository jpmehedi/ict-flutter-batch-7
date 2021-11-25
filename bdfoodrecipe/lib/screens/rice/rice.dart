import 'package:bdfoodrecipe/data.dart';
import 'package:bdfoodrecipe/global/functions.dart';
import 'package:bdfoodrecipe/widget/custom_grid_tile.dart';
import 'package:flutter/material.dart';

class RiceScreen extends StatelessWidget {

  final List rice = bdfood["rice"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: customGridDelegate(),
      padding: EdgeInsets.all(10),
      itemCount: rice.length,
      itemBuilder: (BuildContext context, int index){
        return CustomGridTile(
          imageUrl: rice[index]["image"],
          title: rice[index]["title"],
        );
      }
    );
  }
}

