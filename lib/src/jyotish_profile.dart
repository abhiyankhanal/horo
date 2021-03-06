import 'package:flutter/material.dart';
import 'package:new_jyotish/constants/color.dart';

class JyotishProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
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
              "Jyotish Profile",
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Abhiyan Khanal",
                              style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w400,
                                  color: mainCol),
                            ),
                            SizedBox(height: 5.0),
                            Text("Ekantakuna, Kathmandu"),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Abhiyan Khanal",
                              style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w400,
                                  color: mainCol),
                            ),
                            SizedBox(height: 5.0),
                            Text("Ekantakuna, Kathmandu"),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Abhiyan Khanal",
                              style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w400,
                                  color: mainCol),
                            ),
                            SizedBox(height: 5.0),
                            Text("Ekantakuna, Kathmandu"),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Abhiyan Khanal",
                              style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w400,
                                  color: mainCol),
                            ),
                            SizedBox(height: 5.0),
                            Text("Ekantakuna, Kathmandu"),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
