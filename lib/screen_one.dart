import 'package:demo_project/screen_two.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ScreenOne extends StatelessWidget {
 static const String path = "ScreenOne";
  ScreenOne({ Key? key });
  final String name = "Mehedi";
  final int age = 39;


  List<Map<String, dynamic>> people = <Map<String, dynamic>>[
    {
     "id": 01,
     "name": "Mehedi Hasan",
     "email": "mehedi@genex.com"
    },
    {
     "id": 02,
     "name": "Rasel Ahmed",
     "email": "rasel@gmail.com"
    },    
    {
     "id": 03,
     "name": "Nusrat Jahan",
     "email": "Nusrat@genex.com"
    }
  ];


  Future launchURL (String url) async {
    if(await canLaunch(url)) {
      return launch(url);
    }else{
      throw "Could not launch $url";
    }
  }
  Future launchEmail (String url) async {
    if(await canLaunch(url)) {
      return launch(url);
    }else{
      throw "Could not launch $url";
    }
  }
  Future launchPhone (String url) async {
    if(await canLaunch(url)) {
      return launch(url);
    }else{
      throw "Could not launch $url";
    }
  }

  Future launchSms (String url) async {
    if(await canLaunch(url)) {
      return launch(url);
    }else{
      throw "Could not launch $url";
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen One"),),
      body: Center(
        child: Column(
          children: [
            Card(
              child: SizedBox(
                height: 200,
                width: 200,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColorDark
              ),
              onPressed: (){
                // Navigator.pushNamed(context, ScreenTwo.path, arguments: [name, age]);
                Navigator.pushNamed(context, ScreenTwo.path, arguments: people);
              }, 
              child: Text("Screen One", style: Theme.of(context).textTheme.headline1)
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: ()async{
        //  await launchURL("https://flutter.dev/");
          // await launchEmail('mailto:${people[1]["email"]}?subject=News&body=New%20plugin');
          // await launchPhone("tel:+1 555 010 999");
          await launchSms('sms:asdnasjjdn mas dfjas');
        },
        child: Icon(
          Icons.add,
          color: Theme.of(context).iconTheme.color,
        ),
      ),
    );
  }
}