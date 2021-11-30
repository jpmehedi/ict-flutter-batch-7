import 'package:bdfoodrecipe/global/functions.dart';
import 'package:bdfoodrecipe/screens/details/details.dart';
import 'package:bdfoodrecipe/widget/custom_grid_tile.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  static const String path = "FavoriteScreen";


  @override
  Widget build(BuildContext context) {
    final Map data = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(title: Text("Favorite"),
      backgroundColor: Colors.red,),
      body: GridView.builder(
      gridDelegate: customGridDelegate(),
      padding: EdgeInsets.all(10),
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index){
        return CustomGridTile(
          onTap: (){
            Navigator.pushNamed(context, DetailScreen.path, arguments:{"category": "Fast-Food", "data": data[index]} );
          },
          imageUrl: data["image"],
          title: data["title"],
        );
      }
    ),
    );
  }
}