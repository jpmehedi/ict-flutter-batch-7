import 'dart:math';

import 'package:bdfoodrecipe/db/db_helper.dart';
import 'package:bdfoodrecipe/model/recipe_model.dart';
import 'package:bdfoodrecipe/screen/video/video.dart';
import 'package:bdfoodrecipe/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

// ignore: must_be_immutable
class DetailScreen extends StatelessWidget {
  static const String path = "DetailScreen";

  void _onShare(BuildContext context, text, subject) async {
    if (subject.isNotEmpty) {
      await Share.share(
        "$text",
        subject: "$subject",
      );
    } else {
      await Share.share(
        "Dummy text",
        subject: "Dummy Subject",
      );
    }
  }

  Random random = Random();

  String getShareData(title, ingredients, directons) {
    var _ingradients =
        ingredients.toString().replaceAll("[", "").replaceAll("]", "");

    var _directons =
        directons.toString().replaceAll("[", "").replaceAll("]", "");

    return '''

$title 

Ingradients: ${_ingradients.toString()}

Directions: ${_directons.toString()};

    ''';
  }

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width;
    final Map items = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Details"),
            SizedBox(
              height: 4,
            ),
            Text("Catagory: ${items["category"]}",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500)),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                _onShare(
                  context,
                  getShareData(
                    items["data"]["title"],
                    items["data"]["ingredients"],
                    items["data"]["directions"],
                  ),
                  "Feel free share this recipe",
                );
              },
              icon: Icon(Icons.share))
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 200,
              color: Colors.orange,
              child: Stack(
                fit: StackFit.loose,
                children: [
                  Image.asset(
                    items["data"]['image'],
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.only(left: 10, top: 5, bottom: 5),
                      width: size,
                      height: 64,
                      color: Colors.black.withOpacity(0.50),
                      child: Center(
                        child: Text(
                          items["data"]['title'],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  )
                ],
              )),
          Row(
            children: [
              CustomButton(
                onTap: () async {
                  final recipeModel = RecipeModel(
                      id: random.nextInt(100),
                      title: items["data"]['title'],
                      image: items["data"]['image'],
                      ingredients: items["data"]["ingredients"].toString(),
                      directions: items["data"]["directions"].toString(),
                      youtubeUrl: items["data"]["youtubeUrl"]);
                  await DbHelper.instance.addCookedRecipe(recipeModel);
                },
                icon: Icons.check_outlined,
                lebel: "Cooked",
                color: Colors.orange,
              ),
              CustomButton(
                onTap: () async {
                  final recipeModel = RecipeModel(
                      id: random.nextInt(100),
                      title: items["data"]['title'],
                      image: items["data"]['image'],
                      ingredients: items["data"]["ingredients"].toString(),
                      directions: items["data"]["directions"].toString(),
                      youtubeUrl: items["data"]["youtubeUrl"]);
                  await DbHelper.instance.addFavoriteRecipe(recipeModel);
                },
                icon: Icons.favorite,
                lebel: "Favorite",
                color: Colors.pink,
              ),
              CustomButton(
                onTap: () {
                  Navigator.pushNamed(context, YoutubeScreen.path,
                      arguments: items["data"]);
                },
                icon: Icons.video_camera_back,
                lebel: "Video",
                color: Colors.red,
              )
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ingredients",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 24,
                            fontWeight: FontWeight.w700)),
                    Divider(
                      thickness: 2,
                      color: Colors.orange,
                    ),
                    for (int i = 0;
                        i < items["data"]['ingredients'].length;
                        i++)
                      Row(
                        children: [
                          Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(4)),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(items["data"]['ingredients'][i],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    SizedBox(
                      height: 16,
                    ),
                    Text("Directions",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 24,
                            fontWeight: FontWeight.w700)),
                    Divider(
                      thickness: 2,
                      color: Colors.orange,
                    ),
                    for (int i = 0; i < items["data"]['directions'].length; i++)
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 8,
                            height: 8,
                            margin: EdgeInsets.only(top: 4),
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(4)),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Text(items["data"]['directions'][i],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ),
                        ],
                      )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
