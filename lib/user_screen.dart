import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class PostScreen extends StatefulWidget {
  static const String path = "UserScreen";
  const PostScreen({ Key? key }) : super(key: key);

  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final url = "https://jsonplaceholder.typicode.com/posts";
  List posts = [];

  Future getPosts()async{
    final response = await http.get(Uri.parse(url));
    if(response.statusCode == 200) {
      setState(() {
        posts = jsonDecode(response.body);
      });
        print(posts);
    }
  }

  @override
  void initState() {
    getPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(title: Text("Post Screen"),),
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index){
          return Divider(
            color: Colors.grey,
            thickness: 2,
            height: 0,
          );
        },
        itemCount: posts.length,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            onTap: (){},
            title: Text(posts[index]["title"]),
            subtitle: Text(posts[index]["body"]),
          );
        }
      ),
    );
  }
}