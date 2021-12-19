import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  static const String path = "DetailsScreen";
  const DetailsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: (){
                            Navigator.pop(context);
                          }, 
                          icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Column(
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
                    ),
                  )
                ],
              ),

              SizedBox(height: 30,),
      
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
              SizedBox(height: 32,),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Transform.translate(
                    offset: Offset(0, -20),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 100,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0xffD1CDEA),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                      width: double.infinity,
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
                          ListView.builder(
                          shrinkWrap: true,
                          itemCount: 7,
                          itemBuilder: (context, index){
                            return DailyWeatherListBuilder(
                              hasDivider: index < 6 ?  true : false,
                              imageName: "moon_cloud_fast_wind",
                              temp: "23",
                              day: "Monday",
                              date: "10 March 2021",
                            );
                          }
                          ),
                        ],
                      ),
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DailyWeatherListBuilder extends StatelessWidget {
  final bool? hasDivider;
  final String? imageName;
  final String? temp;
  final String? day;
  final String? date;
  const DailyWeatherListBuilder({
    Key? key, this.hasDivider, this.date, this.day, this.imageName, this.temp
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
              Image.asset(
                "assets/$imageName.png",
                scale: 4,
              ),
              Row(
                children: [
                  Text(
                      "$temp°",
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
                          "$day",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold 
                          ),
                        ),
                        Text(
                          "$date",
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
       hasDivider == true? Divider(
          thickness: 0.5,
          color: Colors.grey,
          indent: 60,
          endIndent: 60,
        ) : Container(width: 0, height: 0,)
      ],
    );
  }
}