// https://api.openweathermap.org/data/2.5/onecall?lat=33.44&lon=-94.04&exclude=minutely&appid=016ea41acccd45affefe7efd91a019d1
import 'dart:convert';

import 'package:http/http.dart' as http;
class ApiController{

  final String baseUrl = "https://api.openweathermap.org/";
  final String apiKey = "016ea41acccd45affefe7efd91a019d1";
  final String lat = "23.777176";
  final String lon = "90.399452";
  final String api = "data/2.5/onecall?";


  Map weatherData = {};
  Future getWeather()async {
   final response =  await http.get(Uri.parse(baseUrl+api+"lat=$lat"+"&"+"lon=$lon"+"&exclude=minutely"+"&appid=$apiKey"));
   if(response.statusCode == 200) {
     weatherData = jsonDecode(response.body);
   }
  }


}