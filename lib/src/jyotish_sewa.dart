import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:new_jyotish/constants/color.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class JyotishSewa extends StatefulWidget {
  @override
  _JyotishSewaState createState() => _JyotishSewaState();
}

class _JyotishSewaState extends State<JyotishSewa> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController name;
  TextEditingController email;
  TextEditingController phone;
  TextEditingController message;
  @override
  void initState() {
    super.initState();
    name = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    message = TextEditingController();
  }

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    phone.dispose();
    message.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
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
              "Jyotish Sewa",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ),
          SingleChildScrollView(
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: _height * 0.11,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Enter your requirements and details",
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                  color: mainCol),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(8.0),
                              elevation: 5.0,
                              shadowColor: mainCol.withOpacity(0.5),
                              child: TextFormField(
                                controller: name,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: mainCol),
                                    ),
                                    labelText: "Name"),
                                onChanged: (val) {
                                  val = name.text;
                                },
                                validator: (val) {
                                  if (val == "") {
                                    return "Name can't be empty";
                                  }
                                },
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(4.0),
                              elevation: 5.0,
                              shadowColor: mainCol.withOpacity(0.5),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                controller: email,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: mainCol),
                                    ),
                                    labelText: "Email"),
                                onChanged: (val) {
                                  email.text = val;
                                },
                                validator: (val) {
                                  if (val == "") {
                                    return "Email can't be empty";
                                  }
                                },
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(4.0),
                              elevation: 5.0,
                              shadowColor: mainCol.withOpacity(0.5),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: email,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: mainCol),
                                    ),
                                    labelText: "Phone Number"),
                                onChanged: (val) {
                                  phone.text = val;
                                },
                                validator: (val) {
                                  if (val == "") {
                                    return "Phone can't be empty";
                                  }
                                },
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(4.0),
                              elevation: 5.0,
                              shadowColor: mainCol.withOpacity(0.5),
                              child: TextFormField(
                                maxLines: 4,
                                controller: message,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(),
                                    ),
                                    labelText: "Message with requirement"),
                                onChanged: (val) {
                                  val = message.text;
                                },
                                validator: (val) {
                                  if (val == "") {
                                    return "Message can't be empty";
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: mainCol,
                      ),
                      onPressed: () {
                        try {
                          if (_formKey.currentState.validate()) {
                            print("valdiated");
                          }
                        } catch (e) {
                          print(e);
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          "Submit",
                          style: TextStyle(color: cardCol),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
