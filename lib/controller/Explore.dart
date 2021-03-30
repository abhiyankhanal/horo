import 'package:flutter/material.dart';
import 'package:new_jyotish/constants/color.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Expanded(
        child: Container(
          //margin: EdgeInsets.all(10.0),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                  child: Text(
                    "Explore",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        color: mainCol),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed("/profileScreen");
                          },
                          shape: CircleBorder(),
                          elevation: 2.0,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.person,
                              size: _height * 0.07,
                              color: mainCol,
                            ),
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          "Jyotish Profile",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: mainCol),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        MaterialButton(
                          onPressed: () =>
                              Navigator.of(context).pushNamed("/jsewaScreen"),
                          shape: CircleBorder(),
                          elevation: 2.0,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.person,
                              size: _height * 0.07,
                              color: mainCol,
                            ),
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          "Jyotish Sewa",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: mainCol),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        MaterialButton(
                          onPressed: () {},
                          shape: CircleBorder(),
                          elevation: 2.0,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.person,
                              size: _height * 0.07,
                              color: mainCol,
                            ),
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          "Mero Patro",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: mainCol),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed("/horoscopeScreen");
                          },
                          shape: CircleBorder(),
                          elevation: 2.0,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.person,
                              size: _height * 0.07,
                              color: mainCol,
                            ),
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          "Mero Rashi",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: mainCol),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        MaterialButton(
                          onPressed: () {},
                          shape: CircleBorder(),
                          elevation: 2.0,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.person,
                              size: _height * 0.07,
                              color: mainCol,
                            ),
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          "Mero Kundali",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: mainCol),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        MaterialButton(
                          onPressed: () {},
                          shape: CircleBorder(),
                          elevation: 2.0,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.person,
                              size: _height * 0.07,
                              color: mainCol,
                            ),
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          "Mero Patro",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: mainCol),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
