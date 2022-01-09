import 'package:bdfoodrecipe/db/db_helper.dart';
import 'package:bdfoodrecipe/model/recipe_model.dart';
import 'package:flutter/material.dart';


class Favorite extends StatefulWidget {
    static const String path = "Favorite";
  const Favorite({ Key? key }) : super(key: key);

  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:              Container(
                  height: 400,
                  child: FutureBuilder(
                    future: DbHelper.instance.getCustomer(),
                    builder: (BuildContext context, AsyncSnapshot<List<RecipeModel>> snapshot){

                      if(!snapshot.hasData) {
                        return Text("Loading......");
                      }
                      return ListView(
                        children: snapshot.data!.map((recipe) {
                          return ListTile(
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  onPressed: ()async{
                                   
                                  }, 
                                  icon: Icon(Icons.delete, color: Colors.red,)
                                ),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                         
                                    });
   
                                  }, 
                                  icon: Icon(Icons.edit)
                                )
                              ],
                            ),
                            title: Text("${recipe.title}"),

                          );
                        }).toList(),
                      );
                    }
                  )
                ),
    );
  }
}