import 'package:bdfoodrecipe/data.dart';
import 'package:flutter/material.dart';

class RiceScreen extends StatelessWidget {

  final List rice = bdfood["rice"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 8 / 7,
      ),
      padding: EdgeInsets.all(10),
      itemCount: rice.length,
      itemBuilder: (BuildContext context, int index){
        return Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(rice[index]["image"]),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    rice[index]["title"],
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.watch, color: Colors.red,),
                          Text("30 min")
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.food_bank, color: Colors.red,),
                          Text("15 Ingredients")
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }
    );
  }
}