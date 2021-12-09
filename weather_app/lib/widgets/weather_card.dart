import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                height: 292,
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
                  boxShadow: [
                      BoxShadow(
                        color: Color(0xff4B3EAE).withOpacity(0.5),
                        spreadRadius: 10,
                        blurRadius: 25,
                        offset: Offset(0, 7), // changes position of shadow
                      ),
                  ],
                  borderRadius: BorderRadius.circular(40)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/moon_cloud_fast_wind.png",
                      scale: 1.5,
                    ),
                    Text(
                      "23°",
                      style: TextStyle(
                        fontSize: 72,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "Moon Cloud Fast Wind",
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
              "Sunday, 8 March 2021",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.bold
              ),
            )),
          ),
        )
      ],
    );
  }
}