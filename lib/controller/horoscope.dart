// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// Map data;

// class HoroscopeContriller extends StatefulWidget {
//   @override
//   _HoroscopeContrillerState createState() => _HoroscopeContrillerState();
// }

// class _HoroscopeContrillerState extends State<HoroscopeContriller> {
//   var aries,
//       taurus,
//       gemini,
//       cancer,
//       leo,
//       virgo,
//       libra,
//       sagittarius,
//       capricorn,
//       aquarius,
//       pisces,
//       scorpio,
//       rashi;
//   Future fetch(rashi) async {
//     http.Response response = await http.get(
//       "http://horoscope-api.herokuapp.com/horoscope/today/" + rashi,
//     );
//     setState(() {
//       data = jsonDecode(response.body);
//     });
//     return data;
//   }

//   Future load() async {
//     aries = await fetch("aries");
//     taurus = await fetch("taurus");
//     gemini = await fetch("gemini");
//     cancer = await fetch("cancer");
//     leo = await fetch("leo");
//     virgo = await fetch("virgo");
//     libra = await fetch("libra");
//     sagittarius = await fetch("SAGITTARIUS");
//     capricorn = await fetch("CAPRICORN");
//     aquarius = await fetch("AQUARIUS");
//     pisces = await fetch("PISCES");
//     scorpio = await fetch("scorpio");
//     print('data fetched successfully');
//   }

//   @override
//   void initState() {
//     load();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (data == null) {
//       return CircularProgressIndicator();
//     } else {
//       return Scaffold(
//         appBar: AppBar(
//           title: Text(data.toString()),
//         ),
//       );
//     }
//   }
// }
