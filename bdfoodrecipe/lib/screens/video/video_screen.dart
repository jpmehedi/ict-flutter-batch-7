import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class VideoScreen extends StatelessWidget {
  static const String path = "VideoScreen";
  const VideoScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map data = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(title: Text(data["title"]),backgroundColor: Colors.red,),
      body: WebView(
        initialUrl: "${data["youtubeUrl"]}",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}