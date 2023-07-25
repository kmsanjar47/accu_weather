import 'package:dio/dio.dart';

String API_STRING = "ab830c12273a4337b4495247232507";

class WeatherRepository{
  final dio = Dio();
  Future<Response> getweatherInfoRepo(String lat,String lon)async{
    final response = await dio.get('http://api.weatherapi.com/v1/current.json?key=$API_STRING&q=$lat,$lon&aqi=no');
    return response;

  }
}
