import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/widgets/weather_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:  Color(0xffF1F0FA),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Text(
                "Pasuruan",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text("17.45 PM"),
              SizedBox(height: 8,),
              CarouselSlider(
                options: CarouselOptions(height: 300.0),
                items: [1,2,3,4,5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return WeatherCard();
                    },
                  );
                }).toList(),
              ),
              Container(
                color: Color(0xff766CC1).withOpacity(0.35),
                margin: EdgeInsets.only(top: 80),
                child: Column(
                  children: [
                    Transform.translate(
                      offset: Offset(0, -60),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 122,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ColumnBuilder(
                              imageName: "carbon_humidity",
                              value: "75 %",
                              level: "Humidity",
                            ),
                            ColumnBuilder(
                              imageName: "tabler_wind",
                              value: "8 km/h",
                              level: "Wind",
                            ),
                            ColumnBuilder(
                              imageName: "ion_speedometer",
                              value: "1011",
                              level: "Air Pressure",
                            ),
                            ColumnBuilder(
                              imageName: "ic_round-visibility",
                              value: "6 km",
                              level: "Visibility",
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Today",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Next 7 Days",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios, color: Colors.black,)
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                        height: 140,
                        margin: EdgeInsets.only(top: 32),
                        child: ListView.builder(
                          // reverse: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index){
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: HourlyWeatherCard(),
                            );
                          }
                        ),
                      ) 
                  ],
                ),
              )
             
            ],
          ),
        ),
      ),
    );
  }
}

class HourlyWeatherCard extends StatelessWidget {
  const HourlyWeatherCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       width: 92,
       height: 132,
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

         borderRadius: BorderRadius.circular(25)
       ),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text(
             "06:00 AM",
             style: TextStyle(
               fontSize: 12,
               fontWeight: FontWeight.w500,
               color: Colors.white
             ),
           ),
           Image.asset(
             "assets/moon_cloud_fast_wind.png",
             scale: 4,
           ),
           Text(
             "23°",
             style: TextStyle(
               fontSize: 18,
               color: Colors.white,
               fontWeight: FontWeight.bold
             ),
           ),
         ],
       ),
     );
  }
}

class ColumnBuilder extends StatelessWidget {
  final String? imageName;
  final String? level;
  final String? value;
  const ColumnBuilder({
    Key? key, this.imageName, this.level, this.value
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/$imageName.png"),
        Text(
          "$value",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),
        Text(
          "$level",
           style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.black
          ),
        )
      ],
    );
  }
}

