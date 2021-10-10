import 'package:flutter/material.dart';

class TextFieldScreen extends StatelessWidget {
  const TextFieldScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(title: Text("TextField"),),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField( 
              keyboardType: TextInputType.text,
              obscureText: true,
              obscuringCharacter: "*",
              // maxLines: 4,
              decoration: InputDecoration(
                // icon: Icon(Icons.person),
                hintText: "Enter your name",
                hintStyle: TextStyle(
                  color: Colors.orange
                ),
                labelText: "Your Name",
                labelStyle: TextStyle(
                  color: Colors.orange
                ),
                enabledBorder: OutlineInputBorder(
                  // borderSide: BorderSide.none
                  borderSide: BorderSide(
                    color: Colors.orange,
                    width: 2
                  ),
                  borderRadius: BorderRadius.circular(10)
                ),
                focusedBorder: OutlineInputBorder(
                  // borderSide: BorderSide.none
                  borderSide: BorderSide(
                    color: Colors.orange,
                    width: 2
                  ),
                  borderRadius: BorderRadius.circular(10)
                ),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.search)
              ),
            )
          ],
        ),
      ),
    );
  }
}