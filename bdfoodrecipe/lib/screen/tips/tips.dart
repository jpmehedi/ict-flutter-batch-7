import 'package:flutter/material.dart';

class CookingTips extends StatelessWidget {
  static const String path = "/CookingTips";
  const CookingTips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Cooking Tips"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Cooking Tips That'll Change Every Home Cook's Life",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  '''
1. Take notes as you go.
2. Read the recipe all the way through before you start.
3. Save bacon fat.
4. Put a damp paper towel under your cutting board. 
5. Set your timer for a few minutes less than the called-for time.
6. Season and taste as you go.
7. Trust yourself!
                  ''',
                  style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w400, height: 1.8),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
