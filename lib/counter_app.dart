import 'package:flutter/material.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter App"),),
      body: Column(
        children: [
          Text("Dummy Data")
        ],
      ),

      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.orange,
      //   hoverColor: Colors.pink,
      //   tooltip: "Any text",
      //   onPressed: (){},
      //   child: Icon(Icons.add),
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.orange,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: Colors.pink,
            width: 2
          )
        ),
        hoverColor: Colors.pink,
        tooltip: "Any text",
        onPressed: (){
          _showDialog(context);
        },
        label: Text("Add"),
        icon: Icon(Icons.add),
      ),
    );
  }
}


_showDialog(BuildContext context) {
  showDialog(
    context: context, 
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Simple Alert dialog"),
        content: Text("This is body of the alert dialog"),
        actions: [
          TextButton(
            onPressed: (){}, 
            child: Text("Yes")
          ),
          TextButton(
            onPressed: (){
              Navigator.pop(context);
            }, 
            child: Text("No")
          )
        ],
      );
    }
  );
}