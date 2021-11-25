import 'package:bdfoodrecipe/widget/custom_button.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static const String path = "DetailScreen";
  const DetailScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width;
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Details"),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.share)
          )
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            color: Colors.orange,
            child: Stack(
              fit: StackFit.loose,
              children: [
                Image.asset(
                  "assets/images/rice/1.jpg",
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    width: size,
                    height: 56,
                    color: Colors.black.withOpacity(0.50),
                    child: Text("This is title", style: TextStyle(
                      color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700
                    ),),
                  ),
                )
              ],
            )
          ),
          Row(
            children: [
              CustomButton(
                icon: Icons.check_outlined,
                lebel: "Cooked",
                color: Colors.orange,
              ),
              CustomButton(
                icon: Icons.favorite,
                lebel: "Favorite",
                color: Colors.pink,
              ),
              CustomButton(
                icon: Icons.photo,
                lebel: "Photos",
                color: Colors.red,
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ingredients"
                ),
                Text(
                  "Details"
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

