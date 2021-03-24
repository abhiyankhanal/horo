import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:new_jyotish/apiservice.dart';
import 'package:new_jyotish/constants/color.dart';
import 'package:new_jyotish/models/horoscope.dart';

class Horoscope extends StatefulWidget {
  @override
  _HoroscopeState createState() => _HoroscopeState();
}

class _HoroscopeState extends State<Horoscope> {
  ApiService _api = ApiService();
  Map<String, dynamic> data;
  List<Horo> _horoscope = [];

  List img_url = [
    "assets/zodiac/0.png",
    "assets/zodiac/1.png",
    "assets/zodiac/2.png",
    "assets/zodiac/3.png",
    "assets/zodiac/4.png",
    "assets/zodiac/5.png",
    "assets/zodiac/6.png",
    "assets/zodiac/7.png",
    "assets/zodiac/8.png",
    "assets/zodiac/9.png",
    "assets/zodiac/10.png",
    "assets/zodiac/11.png"
  ];

  Future load() async {
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
      body: Container(
        child: Stack(overflow: Overflow.visible, children: <Widget>[
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
          Positioned(
              top: _height * 0.12,
              left: _width * 0,
              child: Container(
                  height: _height,
                  width: _width,
                  child: FutureBuilder(
                      future: ApiService().fetch('leo'),
                      builder: (context, snap) {
                        if (snap.connectionState == ConnectionState.done &&
                            snap.hasData) {
                          Horo hor = snap.data;
                          return Column(
                            children: <Widget>[
                              Container(
                                width: _width * 0.95,
                                margin: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: cardCol,
                                  boxShadow: [
                                    BoxShadow(
                                      color: shadowCol.withOpacity(0.7),
                                      //spreadRadius: 2,
                                      blurRadius: 9,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        height: _height * 0.15,
                                        width: _width * 0.2,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: AssetImage(img_url[0]),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 25.0),
                                      Flexible(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              hor.sunsign,
                                              style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w400,
                                                color: mainCol,
                                              ),
                                            ),
                                            SizedBox(height: 3.0),
                                            Text(
                                              hor.horoscope,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13.0,
                                              ),
                                              // maxLines: 4,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        } else {
                          return CircularProgressIndicator();
                        }
                      }))),
        ]),
      ),
    );
  }
}
