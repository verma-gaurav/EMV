import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../drawer/leftSideDrawer.dart';
import '../drawer/rightSideDrawer.dart';
import 'homeScreen.dart';

import 'package:fluttertoast/fluttertoast.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  _makingPhoneCall() async {
    const url = 'tel:+123 88 956 00';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _sendingMails() async {
    const url = 'infonouka@gmail.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLBrowser() async {
    const url = 'www.radiustheme.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const LeftSideDrawer(),
      endDrawer: const RightSideDrawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: FlatButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => HomeScreen()));
          },
          child: const Image(
            image: AssetImage('images/mainlogo.png'),
            height: 100,
            width: 100,
          ),
        ),
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 25),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 254, 254),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.help_outlined,
                        size: 20,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                      Container(
                        width: 180,
                        child: Text(
                          'HOW MAY WE HELP YOU',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                  color: Color.fromARGB(255, 208, 207, 207),
                  child: Column(
                    children: [
                      Text(
                        'Leave a Message',
                        style: TextStyle(fontSize: 30),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              labelText: 'Name*',
                              labelStyle: TextStyle(color: Colors.black),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              hintText: 'Please Enter your name'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 15.0,
                          right: 15.0,
                        ),
                        child: TextField(
                          // obscureText: true,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              labelText: 'Email*',
                              labelStyle: TextStyle(color: Colors.black),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              hintText: 'Please Enter your valid Email ID'),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              labelText: 'Subject*',
                              labelStyle: TextStyle(color: Colors.black),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              hintText: 'What is it about?'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0, right: 15.0),
                        child: TextField(
                          // obscureText: true,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              labelText: 'Phone Number*',
                              labelStyle: TextStyle(color: Colors.black),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              hintText: 'Please Enter your Phone Number'),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            labelText: 'Message*',
                            labelStyle: TextStyle(color: Colors.black),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                          ),
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 50),
                              shadowColor: Colors.black,
                              elevation: 2),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (ctx) {
                                  return Dialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40)),
                                      elevation: 16,
                                      child: Container(
                                          padding: EdgeInsets.only(top: 40),
                                          height: 200,
                                          width: 300,
                                          child: Center(
                                            child: Column(
                                              children: [
                                                Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 10)),
                                                Text(
                                                  'Message Sent !',
                                                  style:
                                                      TextStyle(fontSize: 20),
                                                ),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 10)),
                                                ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      primary: Colors.green,
                                                      shape:
                                                          new RoundedRectangleBorder(
                                                        borderRadius:
                                                            new BorderRadius
                                                                .circular(30.0),
                                                      ),
                                                    ),
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: Text("OK",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white))),
                                              ],
                                            ),
                                          )));
                                });
                          },
                          child: Text(
                            'Send Suggestion',
                            style: TextStyle(fontSize: 20),
                          ))
                    ],
                  )),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: const [
                    Text("Office Information*",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25)),
                    Padding(padding: EdgeInsets.only(bottom: 10)),
                    Text(
                      "Mhen an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into remaining essentially unchanged.",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 70,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 6,
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 3,
                                        child: Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Colors.blue),
                                            child: Icon(
                                              Icons.location_on_outlined,
                                              color: Colors.white,
                                              size: 25,
                                            ))),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5)),
                                    Expanded(
                                        flex: 9,
                                        child: Text(
                                          "Theodore Lowe, Ap #867-859 Sit Rd, Azusa New York",
                                          style: TextStyle(fontSize: 12),
                                        ))
                                  ],
                                )),
                            Expanded(
                                flex: 6,
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 3,
                                        child: Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Colors.blue),
                                            child: Icon(
                                              Icons.call_outlined,
                                              color: Colors.white,
                                              size: 25,
                                            ))),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5)),
                                    Expanded(
                                      flex: 9,
                                      child: TextButton(
                                        onPressed: _makingPhoneCall,
                                        child: Text(
                                          '+123 88 956 00',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 70,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 6,
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 3,
                                        child: Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Colors.blue),
                                            child: Icon(
                                              Icons.email_outlined,
                                              color: Colors.white,
                                              size: 25,
                                            ))),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5)),
                                    Expanded(
                                      flex: 9,
                                      child: TextButton(
                                        onPressed: _sendingMails,
                                        child: Text(
                                          'infonouka@gmail.com',
                                          style: TextStyle(color: Colors.black),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                            Expanded(
                                flex: 6,
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 3,
                                        child: Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Colors.blue),
                                            child: Icon(
                                              Icons.public_outlined,
                                              color: Colors.white,
                                              size: 25,
                                            ))),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5)),
                                    Expanded(
                                        flex: 9,
                                        child: TextButton(
                                          onPressed: _launchURLBrowser,
                                          child: Text(
                                            "www.radiustheme.com",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black),
                                          ),
                                        ))
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
