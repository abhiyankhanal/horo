import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:new_jyotish/services/apiservice.dart';
import 'package:new_jyotish/constants/color.dart';
import 'package:new_jyotish/models/horoscope.dart';
import 'package:new_jyotish/src/widget/horocard.dart';
import 'package:provider/provider.dart';

// List img_url = [
//   "assets/zodiac/0.png",
//   "assets/zodiac/1.png",
//   "assets/zodiac/2.png",
//   "assets/zodiac/3.png",
//   "assets/zodiac/4.png",
//   "assets/zodiac/5.png",
//   "assets/zodiac/6.png",
//   "assets/zodiac/7.png",
//   "assets/zodiac/8.png",
//   "assets/zodiac/9.png",
//   "assets/zodiac/10.png",
//   "assets/zodiac/11.png"
// ];

class Horoscope extends StatefulWidget {
  @override
  _HoroscopeState createState() => _HoroscopeState();
}

class _HoroscopeState extends State<Horoscope> {
  Map<String, dynamic> data;
  List<Horo> _horoscope = [];
  Future load() async {
    var _api = Provider.of<ApiService>(context);
    await _api.fetch("aries").then((value) => _horoscope.add(value));
    await _api.fetch("taurus").then((value) => _horoscope.add(value));
    await _api.fetch("gemini").then((value) => _horoscope.add(value));
    await _api.fetch("cancer").then((value) => _horoscope.add(value));
    await _api.fetch("leo").then((value) => _horoscope.add(value));
    await _api.fetch("virgo").then((value) => _horoscope.add(value));
    await _api.fetch("libra").then((value) => _horoscope.add(value));
    await _api.fetch("scorpio").then((value) => _horoscope.add(value));
    await _api.fetch("sagittarius").then((value) => _horoscope.add(value));
    await _api.fetch("capricorn").then((value) => _horoscope.add(value));
    await _api.fetch("aquarius").then((value) => _horoscope.add(value));
    await _api.fetch("pisces").then((value) => _horoscope.add(value));
    print('data fetched successfully');
  }

  @override
  void initState() {
    //load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(overflow: Overflow.visible, children: <Widget>[
        Container(
          height: _height * 0.2,
          decoration: BoxDecoration(
            color: mainCol,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(60.0),
              bottomLeft: Radius.circular(60.0),
            ),
          ),
        ),
        Positioned(
          left: _width * 0.35,
          top: _height * 0.06,
          child: Text(
            "Horoscope",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
                color: Colors.white),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: _height * 0.1,
                ),
                HoroCard(rashi: "aries", img: "assets/zodiac/0.png"),
                HoroCard(rashi: "taurus", img: "assets/zodiac/1.png"),
                HoroCard(rashi: "gemini", img: "assets/zodiac/2.png"),
                HoroCard(rashi: "cancer", img: "assets/zodiac/3.png"),
                HoroCard(rashi: "leo", img: "assets/zodiac/4.png"),
                HoroCard(rashi: "virgo", img: "assets/zodiac/5.png"),
                HoroCard(rashi: "libra", img: "assets/zodiac/6.png"),
                HoroCard(rashi: "scorpio", img: "assets/zodiac/7.png"),
                HoroCard(rashi: "sagittarius", img: "assets/zodiac/8.png"),
                HoroCard(rashi: "capricorn", img: "assets/zodiac/9.png"),
                HoroCard(rashi: "aquarius", img: "assets/zodiac/10.png"),
                HoroCard(rashi: "pisces", img: "assets/zodiac/11.png"),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
