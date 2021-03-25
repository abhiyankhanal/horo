import 'package:flutter/material.dart';
import 'package:new_jyotish/apiservice.dart';
import 'package:new_jyotish/src/home.dart';
import 'package:new_jyotish/src/horoscope.dart';
import 'package:new_jyotish/src/jyotish_profile.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ApiService())],
      child: MyApp()));
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
    return MaterialApp(
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
    );
  }
}
