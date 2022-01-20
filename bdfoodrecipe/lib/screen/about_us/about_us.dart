import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  static const String path = "/AboutUs";
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("About us"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '''
"Foodie" free app provide offline collection of different kind of Recipes. Cooking Recipes app has testifies recipes with quick master chef recipes spread across six major categories Non-Vegetarian to Vegan, Vegetarian, Drinks/Beverages, Deserts, Snacks & Sweets.
All the recipes in this easy cookbook have been organized and cataloged so that you can relate the recipes by Categories and Ingredients.

Application Features:

1. You can browse through the menu of testifies recipes all the cooks recipes.
2. You can browse through all the Categories, find recipes in each of them.
3. Find the List of ingredients with cooking instructions for each recipe.
4. Find recipes by cuisine. This recipes app for android has recipes from over 4 different categories.

Cut down on the cooking time with these quick and easy to make food recipes. All recipes use simple ingredients that are easily available and inexpensive. If you are interesting in learning how to cook healthy and yet simple recipes, you are in the right place. Our cookbook recipes for free apps have all the recipes you will need...and it's free forever! No internet access needed (works offline too). Just free food recipes!
                    
                    ''',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
