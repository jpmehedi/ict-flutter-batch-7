import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> screens = [
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.red,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.green,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.yellow,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BottomNavigationBar"),),
      body: screens.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items:<BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Setting"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile"
          ),
        ],
        currentIndex: selectedIndex,
        onTap: (int index){
          // print(index); 
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}