import 'package:flutter/material.dart';
import 'package:new_jyotish/constants/color.dart';

class ProfileCard extends StatelessWidget {
  String jname;
  String address;
  String imgUrl;
  ProfileCard(
      {@required this.jname, @required this.address, @required this.imgUrl});
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Container(
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
                    image: AssetImage(imgUrl), fit: BoxFit.cover),
              ),
            ),
            SizedBox(width: 25.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  jname,
                  style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w400,
                      color: mainCol),
                ),
                SizedBox(height: 5.0),
                Text(address),
              ],
            )
          ],
        ),
      ),
    );
  }
}
