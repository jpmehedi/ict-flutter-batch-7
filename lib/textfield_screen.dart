import 'package:demo_project/profile.dart';
import 'package:flutter/material.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({ Key? key }) : super(key: key);

  @override
  _TextFieldScreenState createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {

  bool isTap = false;

  int  age = 27;


  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.teal,
      appBar: AppBar(title: Text("TextField"),),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField( 
              controller: textEditingController,
              onTap: (){
                setState(() {
                  isTap = true;
                });
              },

              onChanged: (String name){
                setState(() {
                  // print(textEditingController.text);
                });
              },
              keyboardType: TextInputType.text,
              // obscureText: true,
              // obscuringCharacter: "*",
              // maxLines: 4,
              decoration: InputDecoration(
                // icon: Icon(Icons.person),
                hintText: "Enter your name",
                hintStyle: TextStyle(
                  color: Colors.orange
                ),
                labelText: "Your Name",
                labelStyle: TextStyle(
                  color: isTap ? Colors.black : Colors.orange
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
                prefixIcon: Icon(
                  Icons.person,
                  color: isTap ? Colors.orange : Colors.red,
                ),
                suffixIcon: Icon(Icons.search)
              ),
            ),

           textEditingController.text.isNotEmpty ? Text(
              textEditingController.text,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ) : Text("Empty body"),

            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Route route = MaterialPageRoute(builder: (ctx)=> ProfileScreen(name: textEditingController.text, age: age,));
                Navigator.push(context, route);
              }, 
              child: Text("Click me")
            )
          ],
        ),
      ),
    );
  }
}