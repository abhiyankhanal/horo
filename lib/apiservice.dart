import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:new_jyotish/models/horoscope.dart';

class ApiService {
  String rashi;
  var dio = Dio();
  Future<Horo> fetch(rashi) async {
    Response response = await dio
        .get("https://horoscope-api.herokuapp.com/horoscope/today/" + rashi);
    print(response.data.runtimeType);
    Map<String, dynamic> data = response.data;
    Horo horo = Horo.fromJson(data);
    return horo;
  }
}
