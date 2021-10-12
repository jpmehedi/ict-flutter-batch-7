import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String? name;
  final int? age;
  const ProfileScreen({this.name, this.age});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.teal,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/poor_man.png"),
            ),
            Text(
              "$name",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Lobster",
                fontWeight: FontWeight.w700,
                fontSize: 28,
              ),
            ),
            Text(
              "$age",
              style: TextStyle(
                color: Colors.white.withOpacity(0.75),
                fontSize: 32,
                letterSpacing: 1.8,
                fontFamily: "SourceCodePro"
              ),
            ),

            Divider(
              thickness: 1,
              color: Colors.white.withOpacity(0.50),
              indent: 120,
              endIndent: 120,
              height: 40,
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.teal,
                    size: 28,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "+880127285258",
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 24
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.teal,
                    size: 28,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "mehedi@augnitive.com",
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 24
                    ),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}