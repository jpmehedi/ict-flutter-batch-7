import 'package:flutter/material.dart';

class CustomGridTile extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  final int? totalIngredients;
  final VoidCallback? onTap;
  const CustomGridTile({
    Key? key,

    this.imageUrl,
    this.title,
    this.onTap,
    this.totalIngredients
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("$imageUrl"),
            SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                "$title",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
           
            Padding(
              padding: const EdgeInsets.all(8),
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
                      Text("$totalIngredients ingredients")
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