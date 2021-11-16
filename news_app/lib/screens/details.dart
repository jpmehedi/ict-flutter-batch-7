import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailScreen extends StatelessWidget {
  static const String path = "DetailScreen";
  const DetailScreen({ Key? key }) : super(key: key);


  Future launchUrl(url)async{
    if(await canLaunch(url)) {
      return launch(url);
    }else{
      throw "Could not launch $url";
    }
  }

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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(
              newsData["title"],
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w700
              ),
            ),
            SizedBox(height: 8,),
            Hero(
              tag: "tag1",
              child: Image.network(
                newsData["urlToImage"],
                height: 250,
                width: double.infinity,
              )
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Author: ${newsData["author"]}"),
                Text("Published: ${newsData["publishedAt"]}")
              ],
            ),
            SizedBox(height: 16,),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: newsData["description"],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14, 
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  TextSpan(
                    text: "[more details]",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 14, 
                      fontWeight: FontWeight.w500
                    ),
                    recognizer: TapGestureRecognizer()..onTap= (){
                      launchUrl(newsData['url']);
                    }
                  ),
                ]
              )
            )
          ],
        ),
      ),
    );
  }
}