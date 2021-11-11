import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class AllNews extends StatefulWidget {
  const AllNews({ Key? key }) : super(key: key);

  @override
  _AllNewsState createState() => _AllNewsState();
}

class _AllNewsState extends State<AllNews> {
  final String url = "https://newsapi.org/v2/everything?q=tesla&from=2021-10-11&sortBy=publishedAt&apiKey=4159422918ad47e1bca6d72a504c5da6";
  List allNews = [];

  Future getAllNews() async{
    final response = await http.get(Uri.parse(url));
    Map _allNews = {};
    if(response.statusCode == 200){
      _allNews = jsonDecode(response.body);
      setState(() {
        allNews = _allNews['articles'];
      });
    }
  }

  String getAuthor(author) {
    if(author != null) {
      return author;
    }else {
      return "UnKnown Resource";
    }
  }

  String getImage(image){
    if(image != null){
      return image;
    }else {
      return "Image Not Found";
    }
  }

  @override
  void initState() {
    getAllNews();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView.builder(
        itemCount: allNews.length,
        itemBuilder: (BuildContext context, int index){
          return Card(
            elevation: 10,
            child: ListTile(
              isThreeLine: true,
              title: Text(allNews[index]['title']),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(getAuthor(allNews[index]['author'])),
                  Text(allNews[index]['publishedAt'])
                ],
              ),
              trailing: Image.network(getImage(allNews[index]['urlToImage'])),
            ),
          );
        }
      ),
    );
  }
}