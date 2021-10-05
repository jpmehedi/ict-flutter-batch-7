import 'package:demo_project/profile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> screens = [
    // Container(
    //   width: double.infinity,
    //   height: double.infinity,
    //   color: Colors.red,
    // ),
    ProfileScreen(),
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
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.pink,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BottomNavigationBar"),),
      body: screens.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
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
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search"
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        unselectedFontSize: 28,
        selectedFontSize: 25,
        backgroundColor: Colors.orange,
        elevation: 20,
        iconSize: 40,
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