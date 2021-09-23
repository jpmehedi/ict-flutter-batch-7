import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  // const ContactList({ Key? key }) : super(key: key);

  // List contact = [
  //   "+85225665",
  //   "630452055",
  //   "692305885024",
  //   "52358632"
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView & ListTile"),),
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index){
          return Divider(
            thickness: 1,
            height: 0,
            color: Colors.red,
          );
        },
        itemCount: 50,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            // tileColor: Colors.teal,
            onTap: (){

            },
            leading: CircleAvatar(
              radius: 40,
              child: Icon(Icons.person),
            ),
            title: Text("+820296225666"),
            subtitle: Text("Flutter Devloper"),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        },
      )
    );
  }
}