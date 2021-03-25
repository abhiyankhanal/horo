import 'package:flutter/material.dart';
import 'package:new_jyotish/constants/color.dart';
import 'package:new_jyotish/src/widget/profilecard.dart';

class JyotishProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
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
          top: _height * 0.08,
          child: Text(
            "Jyotish Profile",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
                color: Colors.white),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: _height * 0.11,
                ),
                ProfileCard(
                    jname: "Abhiyan",
                    address: "Ekantakuna",
                    imgUrl: "assets/1.jpg"),
                ProfileCard(
                    jname: "Abhiyan",
                    address: "Ekantakuna",
                    imgUrl: "assets/1.jpg"),
                ProfileCard(
                    jname: "Abhiyan",
                    address: "Ekantakuna",
                    imgUrl: "assets/1.jpg"),
                ProfileCard(
                    jname: "Abhiyan",
                    address: "Ekantakuna",
                    imgUrl: "assets/1.jpg"),
                ProfileCard(
                    jname: "Abhiyan",
                    address: "Ekantakuna",
                    imgUrl: "assets/1.jpg"),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
