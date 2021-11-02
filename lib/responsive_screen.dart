import 'package:flutter/material.dart';

class ResponsiveScreen extends StatelessWidget {
  static  final String path = "ResponsiveScreen";
  const ResponsiveScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Responsive"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 150,
                  color: Colors.orange,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 150,
                  color: Colors.purple,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    // height: MediaQuery.of(context).size.width / 2 * 0.5,
                    color: Colors.teal,
                    child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Container(
                    height:  MediaQuery.of(context).size.width / 2 * 0.5,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            Container(
              width: 700,
              height: 150,
              color: Colors.pink,
            ),
             Container(
              width: 700,
              height: 150,
              color: Colors.teal,
            ),
            Container(
              width: 700,
              height: 150,
              color: Colors.red,
            ),
            Container(
              width: 700,
              height: 150,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}