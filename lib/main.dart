import 'package:flutter/material.dart';
import 'package:new_jyotish/src/home.dart';
import 'package:new_jyotish/src/horoscope.dart';
import 'package:new_jyotish/src/jyotish_profile.dart';
import 'package:new_jyotish/controller/horoscope.dart';
import 'package:provider/provider.dart';

import 'models/horoscope.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return ChangeNotifierProvider(
      create: (context) {
        Horo();
      },
      child: MaterialApp(
        title: "Jyotish",
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/": (_) => Home(),
          "/profileScreen": (_) => JyotishProfile(),
          "/horoscopeScreen": (_) => Horoscope(),
          // "/thankYou": (_) => ThankYou(),
          // "/horoscpeController": (_) => HoroscopeContriller(),
        },
      ),
    );
  }
}
