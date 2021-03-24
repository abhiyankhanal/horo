import 'package:flutter/material.dart';
import 'package:new_jyotish/constants/color.dart';
import 'package:new_jyotish/controller/caro_slider.dart';
import 'package:new_jyotish/controller/Explore.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainCol,
        title: Text("Mero Jyotish"),
      ),
      body: Container(
        child: Column(
          children: [
            Carousel(),
            SizedBox(
              height: 10.0,
            ),
            Explore(),
          ],
        ),
      ),
    );
  }
}
