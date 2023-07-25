import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:location/location.dart';

import 'package:weather_app/repository/weather_repo.dart';

import '../models/weather_model.dart' as weatherModel;
class WeatherController extends ChangeNotifier{
  String? lat;
  String? lon;

  getLatLon()async{
    final Location location = new Location();
    LocationData locationData = await location.getLocation();
    lat = locationData.latitude.toString();
    lon = locationData.longitude.toString();
    notifyListeners();
  }
  getWeatherInfoCtl()async{
    Response response = await WeatherRepository().getweatherInfoRepo(lat!, lon!);
    print(response);
  }
}

