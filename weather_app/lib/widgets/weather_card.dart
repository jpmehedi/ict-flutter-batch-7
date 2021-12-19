import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  final VoidCallback? onTap;
  final String? dateTime;
  final String? temp;
  final String? weather;
  const WeatherCard({
    Key? key, this.onTap, this.temp, this.dateTime, this.weather
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
              width: 238,
              height: 330,
            ),
            Positioned(
              top: 30,
              child: Container(
                  width: 238,
                  height: 250,
                  padding: EdgeInsets.only(bottom: 25),
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
                    borderRadius: BorderRadius.circular(40)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/moon_cloud_fast_wind.png",
                        scale: 2,
                      ),
                      Text(
                        "$temp°",
                        style: TextStyle(
                          fontSize:72,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        "$weather",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                        ),
                      )
                    ],
                  ),
                ),
            ),
            Positioned(
            top: 15,
            child: Container(
              height: 34,
              width: 140,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40)
              ),
              child: Center(child: Text(
                "$dateTime",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold
                ),
              )),
            ),
          )
        ],
      ),
    );
  }
}