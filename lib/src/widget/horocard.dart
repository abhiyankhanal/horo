import 'package:flutter/material.dart';
import 'package:new_jyotish/constants/color.dart';
import 'package:new_jyotish/models/horoscope.dart';
import 'package:provider/provider.dart';

import '../../services/apiservice.dart';

class HoroCard extends StatelessWidget {
  String img;
  String rashi;
  HoroCard({@required this.rashi, @required this.img});
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: ApiService().fetch(rashi),
      builder: (context, snap) {
        if (snap.connectionState == ConnectionState.done && snap.hasData) {
          Horo hor = snap.data;
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
                      offset: Offset(0, 3), // changes position of shadow
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
                              image: AssetImage(img), fit: BoxFit.fitWidth),
                        ),
                      ),
                      SizedBox(width: 25.0),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Consumer<ApiService>(
                              builder: (context, data, child) {
                                return Text(
                                  hor.sunsign.toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    color: mainCol,
                                  ),
                                );
                              },
                            ),
                            SizedBox(height: 3.0),
                            Consumer<ApiService>(
                                builder: (context, data, child) {
                              return Text(
                                hor.horoscope,
                                style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w400,
                                  color: mainCol,
                                ),
                              );
                            }),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
