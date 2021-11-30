import 'package:bdfoodrecipe/widget/custom_button.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static const String path = "DetailScreen";
  const DetailScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width;
    final Map data = ModalRoute.of(context)!.settings.arguments as Map;
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
                  data['image'],
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
                    child: Text(data['title'], style: TextStyle(
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
                icon: Icons.video_camera_back,
                lebel: "Video",
                color: Colors.red,
              )
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ingredients",
                       style: TextStyle(
                          color: Colors.red, fontSize: 24, fontWeight: FontWeight.w700
                      )
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.orange,
                    ),
                    for(int i = 0; i < data['ingredients'].length; i++)
                    Row(
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(4)
                          ),
                        ),
                        SizedBox(width: 8,),
                        Text(
                          data['ingredients'][i],
                          style: TextStyle(
                            color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500
                          )
                        ),
                      ],
                    ),
                    SizedBox(height: 16,),
                    Text(
                      "Directions",
                       style: TextStyle(
                          color: Colors.red, fontSize: 24, fontWeight: FontWeight.w700
                      )
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.orange,
                    ),
                    for(int i = 0; i < data['directions'].length; i++)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          margin: EdgeInsets.only(top: 4),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(4)
                          ),
                        ),
                        SizedBox(width: 8,),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              data['directions'][i],
                              style: TextStyle(
                                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500
                              )
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

