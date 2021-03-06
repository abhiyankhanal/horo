import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:new_jyotish/constants/color.dart';
import 'package:http/http.dart' as http;
// import 'package:new_jyotish/models/horoscope.dart';

class Horoscope extends StatefulWidget {
  @override
  _HoroscopeState createState() => _HoroscopeState();
}

class _HoroscopeState extends State<Horoscope> {
  Map data;
  var aries,
      taurus,
      gemini,
      cancer,
      leo,
      virgo,
      libra,
      sagittarius,
      capricorn,
      aquarius,
      pisces,
      scorpio;
  String rashi;
  Future fetch(rashi) async {
    http.Response response = await http.get(
      "https://horoscope-api.herokuapp.com/horoscope/today/" + rashi,
    );

    setState(() {
      data = jsonDecode(response.body);
      // Horo.fromJson(data);
    });
    return data;
  }

  Future load() async {
    aries = await fetch("aries");
    taurus = await fetch("taurus");
    gemini = await fetch("gemini");
    cancer = await fetch("cancer");
    leo = await fetch("leo");
    virgo = await fetch("virgo");
    libra = await fetch("libra");
    sagittarius = await fetch("SAGITTARIUS");
    capricorn = await fetch("CAPRICORN");
    aquarius = await fetch("AQUARIUS");
    pisces = await fetch("PISCES");
    scorpio = await fetch("scorpio");
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
    if (scorpio != null) {
      return Scaffold(
        body: SingleChildScrollView(
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
              top: _height * 0.1,
              left: _width * 0,
              child: Column(
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
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: _height * 0.13,
                            width: _width * 0.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: AssetImage("assets/1.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(width: 25.0),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  scorpio['sunsign'].toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                    color: mainCol,
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  scorpio['horoscope'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13.0,
                                  ),
                                  maxLines: 3,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  // Container(
                  //   width: _width * 0.95,
                  //   margin: EdgeInsets.all(10.0),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(10.0),
                  //     color: cardCol,
                  //     boxShadow: [
                  //       BoxShadow(
                  //         color: shadowCol.withOpacity(0.7),
                  //         //spreadRadius: 2,
                  //         blurRadius: 9,
                  //         offset: Offset(0, 3), // changes position of shadow
                  //       ),
                  //     ],
                  //   ),
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(10.0),
                  //     child: Row(
                  //       children: <Widget>[
                  //         Container(
                  //           height: _height * 0.13,
                  //           width: _width * 0.2,
                  //           decoration: BoxDecoration(
                  //             borderRadius: BorderRadius.circular(10.0),
                  //             image: DecorationImage(
                  //                 image: AssetImage("assets/1.jpg"),
                  //                 fit: BoxFit.cover),
                  //           ),
                  //         ),
                  //         SizedBox(width: 25.0),
                  //         Column(
                  //           crossAxisAlignment: CrossAxisAlignment.start,
                  //           children: <Widget>[
                  //             Text(
                  //               "Abhiyan Khanal",
                  //               style: TextStyle(
                  //                   fontSize: 17.0,
                  //                   fontWeight: FontWeight.w400,
                  //                   color: mainCol),
                  //             ),
                  //             SizedBox(height: 5.0),
                  //             Text("Ekantakuna, Kathmandu"),
                  //           ],
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  // Container(
                  //   width: _width * 0.95,
                  //   margin: EdgeInsets.all(10.0),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(10.0),
                  //     color: cardCol,
                  //     boxShadow: [
                  //       BoxShadow(
                  //         color: shadowCol.withOpacity(0.7),
                  //         //spreadRadius: 2,
                  //         blurRadius: 9,
                  //         offset: Offset(0, 3), // changes position of shadow
                  //       ),
                  //     ],
                  //   ),
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(10.0),
                  //     child: Row(
                  //       children: <Widget>[
                  //         Container(
                  //           height: _height * 0.13,
                  //           width: _width * 0.2,
                  //           decoration: BoxDecoration(
                  //             borderRadius: BorderRadius.circular(10.0),
                  //             image: DecorationImage(
                  //                 image: AssetImage("assets/1.jpg"),
                  //                 fit: BoxFit.cover),
                  //           ),
                  //         ),
                  //         SizedBox(width: 25.0),
                  //         Column(
                  //           crossAxisAlignment: CrossAxisAlignment.start,
                  //           children: <Widget>[
                  //             Text(
                  //               "Abhiyan Khanal",
                  //               style: TextStyle(
                  //                   fontSize: 17.0,
                  //                   fontWeight: FontWeight.w400,
                  //                   color: mainCol),
                  //             ),
                  //             SizedBox(height: 5.0),
                  //             Text("Ekantakuna, Kathmandu"),
                  //           ],
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  // Container(
                  //   width: _width * 0.95,
                  //   margin: EdgeInsets.all(10.0),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(10.0),
                  //     color: cardCol,
                  //     boxShadow: [
                  //       BoxShadow(
                  //         color: shadowCol.withOpacity(0.7),
                  //         //spreadRadius: 2,
                  //         blurRadius: 9,
                  //         offset: Offset(0, 3), // changes position of shadow
                  //       ),
                  //     ],
                  //   ),
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(10.0),
                  //     child: Row(
                  //       children: <Widget>[
                  //         Container(
                  //           height: _height * 0.13,
                  //           width: _width * 0.2,
                  //           decoration: BoxDecoration(
                  //             borderRadius: BorderRadius.circular(10.0),
                  //             image: DecorationImage(
                  //                 image: AssetImage("assets/1.jpg"),
                  //                 fit: BoxFit.cover),
                  //           ),
                  //         ),
                  //         SizedBox(width: 25.0),
                  //         Column(
                  //           crossAxisAlignment: CrossAxisAlignment.start,
                  //           children: <Widget>[
                  //             Text(
                  //               "Abhiyan Khanal",
                  //               style: TextStyle(
                  //                   fontSize: 17.0,
                  //                   fontWeight: FontWeight.w400,
                  //                   color: mainCol),
                  //             ),
                  //             SizedBox(height: 5.0),
                  //             Text("Ekantakuna, Kathmandu"),
                  //           ],
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ]),
        ),
      );
    } else {
      return Scaffold(
          body: Center(
        child: CircularProgressIndicator(),
      ));
    }
  }
}
