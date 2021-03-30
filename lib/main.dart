import 'package:flutter/material.dart';
import 'package:new_jyotish/services/apiservice.dart';
import 'package:new_jyotish/src/home.dart';
import 'package:new_jyotish/src/horoscope.dart';
import 'package:new_jyotish/src/jyotish_profile.dart';
import 'package:new_jyotish/src/jyotish_sewa.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        "/jsewaScreen": (_) => JyotishSewa(),
        // "/thankYou": (_) => ThankYou(),
        // "/horoscpeController": (_) => HoroscopeContriller(),
      },
    );
  }
}
