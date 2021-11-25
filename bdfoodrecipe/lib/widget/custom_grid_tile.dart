
import 'package:flutter/material.dart';

class CustomGridTile extends StatelessWidget {
  final String? imageUrl;
  final String? title;

  const CustomGridTile({
    Key? key,
    this.imageUrl,
    this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("$imageUrl"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "$title",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.w700
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
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
}