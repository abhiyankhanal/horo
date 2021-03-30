import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:new_jyotish/models/horoscope.dart';

class ApiService extends ChangeNotifier {
  String rashi;
  var dio = Dio();
  Future<Horo> fetch(rashi) async {
    Response response = await dio
        .get("https://horoscope-api.herokuapp.com/horoscope/today/" + rashi);
    Map<String, dynamic> data = response.data;
    Horo horo = Horo.fromJson(data);
    notifyListeners();
    return horo;
  }
}
