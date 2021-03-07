import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:new_jyotish/constants/color.dart';
import 'package:http/http.dart' as http;
import 'package:new_jyotish/models/horoscope.dart';

class Horoscope extends StatefulWidget {
  @override
  _HoroscopeState createState() => _HoroscopeState();
}

class _HoroscopeState extends State<Horoscope> {
  Map<String, dynamic> data;
  List horo = [
    "aries",
    "taurus",
    "gemini",
    "cancer",
    "leo",
    "virgo",
    "libra",
    "scorpio",
    "sagittarius",
    "capricorn",
    "aquarius",
    "pisces"
  ];
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
  String rashi;
  Future fetch(rashi) async {
    http.Response response = await http
        .get("https://horoscope-api.herokuapp.com/horoscope/today/" + rashi);

    setState(() {
      data = jsonDecode(response.body);
      // Horo.fromJson(data);
    });
    return data;
  }

  Future load() async {
    horo[0] = await fetch("aries");
    horo[1] = await fetch("taurus");
    horo[2] = await fetch("gemini");
    horo[3] = await fetch("cancer");
    horo[4] = await fetch("leo");
    horo[5] = await fetch("virgo");
    horo[6] = await fetch("libra");
    horo[7] = await fetch("scorpio");
    horo[8] = await fetch("sagittarius");
    horo[9] = await fetch("CAPRICORN");
    horo[10] = await fetch("aquarius");
    horo[11] = await fetch("PISCES");
    print('data fetched successfully');
  }

  @override
  void initState() {
    load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    if (horo[11] != null) {
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
          Positioned(
              top: _height * 0.08,
              left: _width * 0,
              child: Container(
                height: _height,
                width: _width,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: horo.length,
                  itemBuilder: (context, index) {
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
                                offset:
                                    Offset(0, 3), // changes position of shadow
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
                                        image: AssetImage(img_url[index]),
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
                                        horo[index]['sunsign'].toUpperCase(),
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w400,
                                          color: mainCol,
                                        ),
                                      ),
                                      SizedBox(height: 3.0),
                                      Text(
                                        horo[index]['horoscope'],
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
                  },
                ),
              )),
        ]),
      );
    } else {
      return Scaffold(
          body: Center(
        child: CircularProgressIndicator(),
      ));
    }
  }
}
