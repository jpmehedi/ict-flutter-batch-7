import 'package:bdfoodrecipe/constant/constant.dart';
import 'package:bdfoodrecipe/global/functions.dart';
import 'package:bdfoodrecipe/screen/about_us/about_us.dart';
import 'package:bdfoodrecipe/screen/bread/bread.dart';
import 'package:bdfoodrecipe/screen/cooked.dart';
import 'package:bdfoodrecipe/screen/desert/desert.dart';
import 'package:bdfoodrecipe/screen/fast_food/fast_food.dart';
import 'package:bdfoodrecipe/screen/favorite.dart';
import 'package:bdfoodrecipe/screen/non_veg/non_veg.dart';
import 'package:bdfoodrecipe/screen/rice/rice.dart';
import 'package:bdfoodrecipe/screen/tips/tips.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String path = "HomeScreen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text("Bd Food Recipes".toUpperCase()),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, Favorite.path);
              },
              icon: Icon(Icons.favorite),
            )
          ],
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.black87,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/non_veg/1.jpg",
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, Favorite.path);
                  },
                  title: Text(
                    "Favorite",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.white,
                  height: 0,
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, Cooked.path);
                  },
                  title: Text(
                    "Cooked",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.white,
                  height: 0,
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, CookingTips.path);
                  },
                  title: Text(
                    "Tips",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
                Container(
                  color: Colors.black54,
                  width: double.infinity,
                  height: 60,
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "More",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                ListTile(
                  onTap: () {
                    launchURL(appLink);
                  },
                  leading: Icon(
                    Icons.rate_review,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Rate Us",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
                ListTile(
                  onTap: () {
                    launchURL(appLink);
                  },
                  leading: Icon(
                    Icons.update,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Update",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, AboutUs.path);
                  },
                  leading: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  title: Text(
                    "About us",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TabBar(
                  isScrollable: true,
                  labelPadding: EdgeInsets.symmetric(horizontal: 10),
                  indicatorWeight: 1.0,
                  indicatorColor: Colors.orange,
                  labelStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Gilroy"),
                  unselectedLabelColor: Colors.red,
                  labelColor: Colors.white,
                  indicator: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(4.0)),
                  tabs: [
                    Tab(
                        child: Text(
                      "Rice",
                    )),
                    Tab(child: Text("Desert")),
                    Tab(child: Text("Bread")),
                    Tab(child: Text("Fast-Food")),
                    Tab(child: Text("Non-Veg")),
                  ]),
            ),
            Expanded(
              child: TabBarView(
                  children: [Rice(), Desert(), Bread(), FastFood(), NonVeg()]),
            )
          ],
        ),
      ),
    );
  }
}
