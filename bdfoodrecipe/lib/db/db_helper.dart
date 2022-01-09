import 'dart:io';

import 'package:bdfoodrecipe/model/recipe_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper{

DbHelper._privateConstructor();

static final DbHelper instance = DbHelper._privateConstructor();

static Database? _database;

Future<Database> get database async => _database ?? await _initDatabase(); 

Future<Database> _initDatabase () async{
 Directory documentDirectory = await getApplicationDocumentsDirectory();

 String path = join(documentDirectory.path, 'recipe.db');

 return await openDatabase(
   path,
   version: 1,
   onCreate: _onCreate,
 );

}


Future _onCreate (Database db, int version)async {

  await db.execute("""
   
  CREATE TABLE recipe(
    id INTEGER PRIMARY KEY,
    title TEXT,
    image TEXT,
    ingredients TEXT,
    directions TEXT,
    youtubeUrl TEXT
  )

  """);

}


Future<int> addFavoriteRecipe (RecipeModel recipeModel)async {
  Database db = await instance.database;
  return await db.insert("recipe", recipeModel.toJson());
}


  
Future<List<RecipeModel>> getCustomer () async{

  Database db = await instance.database;
  var customer = await db.query("recipe", orderBy: "id");

  List<RecipeModel> recipelist = customer.isNotEmpty ? 
  customer.map((data) => RecipeModel.fromJson(data)).toList() : [];
  print('daa; $recipelist');

  return recipelist;
}



}