import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static const String path = "DetailScreen";
  const DetailScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map newsData = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
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
      body: Column(
        children: [
          Text(newsData["title"]),
          Image.network(newsData["urlToImage"]),
          Row(
            children: [
              Text(newsData["author"]),
              Text(newsData["publishedAt"])
            ],
          ),
          Text(newsData["description"])
        ],
      ),
    );
  }
}