import 'package:flutter/material.dart';
import 'package:news_app/screens/all.dart';
import 'package:news_app/screens/business.dart';
import 'package:news_app/screens/entertainment.dart';
import 'package:news_app/screens/sports.dart';

class HomeScreen extends StatelessWidget {
    static const String path = "HomeScreen";
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "News International",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(
                Icons.notification_important,
                color: Colors.black,
              )
            )
          ],
        ),
        drawer: Drawer(),
        body: Column(
          children: [
            TabBar(
              indicatorColor: Colors.teal,
              indicatorWeight: 4,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(
                fontWeight: FontWeight.w700,
              ),
              labelPadding: EdgeInsets.all(10),
              tabs: [
                Text("All"),
                Text("Business"),
                Text("Sports"),
                Text("Entertainment"),
              ]
            ),
            Expanded(
              child: TabBarView(
                children: [
                  AllNews(),
                  BusinessNews(),
                  SportsNews(),
                  EntertainmentNews()
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}