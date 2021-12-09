import 'package:bdfoodrecipe/screens/bread/bread.dart';
import 'package:bdfoodrecipe/screens/dessert/dessert.dart';
import 'package:bdfoodrecipe/screens/fast_food/fast_food.dart';
import 'package:bdfoodrecipe/screens/favorite/favorite.dart';
import 'package:bdfoodrecipe/screens/non_veg/non_veg.dart';
import 'package:bdfoodrecipe/screens/rice/rice.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String path = "HomeScreen";
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("BD FOOD RECIPE"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: (){
                Navigator.pushNamed(context, FavoriteScreen.path);
              }, 
              icon: Icon(Icons.favorite)
            )
          ],
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.black54,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/non_veg/1.jpg"),
                ListTile(
                  onTap: (){},
                  trailing: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.red
                    ),
                    child: Center(child: Text("0", style: TextStyle(color: Colors.white),)),
                  ),
                  title: Text("My Recipe", style: TextStyle(color: Colors.white),),
                ),
                Divider(thickness: 0.5, color: Colors.white,height: 0,),
                ListTile(
                  onTap: (){},
                  title: Text("Favorite", style: TextStyle(color: Colors.white),),
                ),
                Divider(thickness: 0.5, color: Colors.white,height: 0,),
                ListTile(
                  onTap: (){},
                  title: Text("Cooked", style: TextStyle(color: Colors.white),),
                ),
                Divider(thickness: 0.5, color: Colors.white,height: 0,),
                ListTile(
                  onTap: (){},
                  title: Text("Tips", style: TextStyle(color: Colors.white),),
                ),

                Container(
                  padding: EdgeInsets.all(15),
                  width: double.infinity,
                  color: Colors.black,
                  child: Text(
                    "More",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),

               ListTile(
                  onTap: (){},
                  leading: Icon(Icons.search, color: Colors.white,),
                  title: Text("Search", style: TextStyle(color: Colors.white),),
                ),
                Divider(thickness: 0.2, color: Colors.white,height: 0,),
                
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TabBar(
                  isScrollable: true,
                  unselectedLabelColor: Colors.redAccent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.redAccent, Colors.orangeAccent]
                  ),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.redAccent
                ),
                tabs: [  
                  Tab(
                    child: Text("Rice"),
                  ),
                  Tab(
                      child: Text("Bread"),
                    ),
                  Tab(
                      child: Text("Desert"),
                    ),
    
                  Tab(
                      child: Text("Fast-Food"),
                    ),
                  Tab(
                      child: Text("Non-Veg"),
                    ),
                ],
              ),
            ),

            Expanded(
              child: TabBarView(
                children: [
                  RiceScreen(),
                  BreadScreen(),
                  DessertScreen(),
                  FastFoodScreen(),
                  NonVegScreen()
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}