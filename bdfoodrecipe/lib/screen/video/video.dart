

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

 class YoutubeScreen extends StatefulWidget {
   static const String path = "YoutubeScreen";
   @override
   YoutubeScreenState createState() => YoutubeScreenState();
 }

 class YoutubeScreenState extends State<YoutubeScreen> {
 
   @override
   Widget build(BuildContext context) {
     final Map data = ModalRoute.of(context)!.settings.arguments as Map;
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.red,
         title: Text(data["title"]),
       ),
       body: WebView(
         initialUrl: '${data["youtubeUrl"]}',
         javascriptMode: JavascriptMode.unrestricted,
       ),
     );
   }
 }