import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button Screen"),),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 400,
              height: 48,
              child: ElevatedButton(
                // onPressed: null, 
                onPressed: (){},
                child: Text("Sign in", style: TextStyle(fontSize: 24),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  elevation: 20,
                  shadowColor: Colors.green,
                  // padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20)
                  // shape: CircleBorder()
                  shape: RoundedRectangleBorder(
                    // borderRadius: BorderRadius.only(topLeft: Radius.circular(30))
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                      color: Colors.green,
                      width: 3,
                      // style: BorderStyle.none
                    )
                  )   
                ),
              ),
            ),

            TextButton(
              onPressed: (){}, 
              child: Text("Sign in")
            ),
            
            OutlinedButton(
              onPressed: (){}, 
              child: Text("Sign in"),
            ),

            ElevatedButton.icon(
              onPressed: (){}, 
              icon: Icon(Icons.facebook), 
              label: Text("Log in with facebook")
            )
          ],
        ),
      ),
    );
  }
}