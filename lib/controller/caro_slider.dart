import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:new_jyotish/constants/color.dart';
import 'package:new_jyotish/models/caroSlide.dart';
import 'package:new_jyotish/services/dbservices.dart';

class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  DbService db = DbService();
  CaroSlide caro = CaroSlide();

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Container(
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
          padding: const EdgeInsets.only(bottom: 10.0),
          child: StreamBuilder(
              stream: db.getData().asStream(),
              builder: (context, snap) {
                if (snap.hasError) {
                  return Container();
                }
                if (snap.hasData) {
                  List<CaroSlide> docList = snap.data;
                  List<Widget> q = docList.map((c) {
                    return Container(
                      margin: EdgeInsets.only(top: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.red,
                        image: DecorationImage(
                            image: NetworkImage(c.imgUrl), fit: BoxFit.cover),
                      ),
                    );
                  }).toList();

                  // if (docList.isEmpty) {
                  //   return Container();
                  // }
                  return CarouselSlider(
                    options: CarouselOptions(
                      height: _height * 0.3,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                    ),
                    items: q,
                  );
                } else {
                  return Container();
                }
              }),
        ));
  }
}

// Container(
//   margin: EdgeInsets.only(top: 10.0),
//   decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(5.0),
//     color: Colors.blue,
//     image: DecorationImage(
//         image: AssetImage("assets/1.jpg"), fit: BoxFit.cover),
//   ),
// ),
// Container(
//   margin: EdgeInsets.only(top: 10.0),
//   decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(10.0),
//     color: Colors.blue,
//     image: DecorationImage(
//         image: AssetImage("assets/3.jpg"), fit: BoxFit.cover),
//   ),
// ),

// class Slide extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
