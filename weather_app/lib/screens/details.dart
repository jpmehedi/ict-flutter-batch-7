import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
         gradient: LinearGradient(
            colors: [
              Color(0xff4B3EAE),
              Color(0xff766CC1),
              Color(0xff4B3EAE),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back_ios, color: Colors.white,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Today’s Weather",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold 
                      ),
                    ),
                    Text(
                      "Sunday, 8 March 2021",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.bold 
                      ),
                    )
                  ],
                )
              ],
            ),

            Container(
              decoration: BoxDecoration(
                color: Color(0xff766CC1),
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                  width: 2,
                  color: Colors.white
                )
              ),
              child: Row(
                children: [
                    Image.asset("assets/moon_cloud_fast_wind.png"),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "23°",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 72,
                            fontWeight: FontWeight.bold 
                          ),
                        ),
                        Text(
                          "Moon Cloud Fast Wind",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold 
                          ),
                        )
                      ],
                    )
                ],
              ),
            ),

            DailyWeatherListBuilder()
          ],
        ),
      ),
    );
  }
}

class DailyWeatherListBuilder extends StatelessWidget {
  const DailyWeatherListBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        children: [
          Text(
            "Future Weather",                          
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold 
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                Image.asset(
                  "assets/moon_cloud_fast_wind.png",
                  scale: 4,
                ),
                Row(
                  children: [
                    Text(
                        "23°",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 36,
                          fontWeight: FontWeight.bold 
                        ),
                      ),
                      SizedBox(width: 8,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Monday",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.bold 
                            ),
                          ),
                          Text(
                            "9 March 2021",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.bold 
                            ),
                          )
                        ],
                      )
                  ],
                )
            ],
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
            indent: 60,
            endIndent: 60,
          )
        ],
      ),
    );
  }
}