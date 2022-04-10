import 'package:emv_home/sections/elon_musk/elon_musk_card.dart';
import 'package:emv_home/sections/tesla/tesla_card.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import '../drawer/leftSideDrawer.dart';
import '../drawer/rightSideDrawer.dart';
import '../sections/elon_musk/elon_musk_top.dart';
import '../sections/space_X/space_X_Card.dart';
import '../sections/space_X/spaceX_top.dart';
import '../sections/tesla/tesla_top.dart';

import 'dart:async';

class HomeScreen extends StatelessWidget {
  get smallButtons => null;
  final ValueNotifier<String> person = ValueNotifier<String>('tesla');
  var isLoading = false;
  void varCall(p) {
    person.value = p;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(234, 219, 219, 219),
      //App bar
      drawer: const LeftSideDrawer(),
      endDrawer: const RightSideDrawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: FlatButton(
          onPressed: () => print('for Home screen'),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 3),
            width: 100,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                  child: Row(
                    children: [
                      FlatButton(
                        onPressed: () {
                          varCall("tesla");
                        },
                        child: Column(
                          children: [
                            Expanded(
                              child: Center(
                                child: Row(
                                  children: const <Widget>[
                                    CircleAvatar(
                                      radius: 11,
                                      backgroundImage: AssetImage(
                                        'images/c1.png',
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 3)),
                                    Image(
                                      image: AssetImage('images/tesla.png'),
                                      height: 18,
                                      width: 70,
                                    ),
                                  ],
                                ),
                              ),
                              flex: 4,
                            ),
                          ],
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          varCall("spacex");
                        },
                        child: Column(
                          children: [
                            Expanded(
                              child: Center(
                                child: Row(
                                  children: const [
                                    CircleAvatar(
                                      radius: 11,
                                      backgroundImage: AssetImage(
                                        'images/c2.png',
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 3)),
                                    Image(
                                      image: AssetImage('images/space_x.png'),
                                      height: 30,
                                      width: 80,
                                    ),
                                  ],
                                ),
                              ),
                              flex: 4,
                            ),
                          ],
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          varCall("em");
                        },
                        child: Column(
                          children: [
                            Expanded(
                              child: Center(
                                child: Row(
                                  children: const [
                                    CircleAvatar(
                                      radius: 11,
                                      backgroundImage: AssetImage(
                                        'images/em.jpg',
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 3)),
                                    Image(
                                      image: AssetImage('images/elon_musk.png'),
                                      height: 30,
                                      width: 50,
                                    ),
                                  ],
                                ),
                              ),
                              flex: 4,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                  height: 5,
                ),
                SizedBox(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          alignment: const Alignment(0.15, 0.15),
                          child: const Text(
                            'LATEST NEWS',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 15),
                          ),
                          color: const Color.fromARGB(255, 37, 29, 151),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(top: 8),
                          child: Marquee(
                            text: 'Sample text for the Latest News',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                            scrollAxis: Axis.horizontal,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            blankSpace: 20.0,
                            velocity: 50.0,
                          ),
                        ),
                        flex: 2,
                      )
                    ],
                  ),
                  height: 35,
                ),
              ],
            ),
          ),

          SizedBox(
              child: ValueListenableBuilder<String>(
            builder: (BuildContext context, String value, Widget? child) {
              // This builder will only get called when the _counter
              // is updated.
              return person.value == 'tesla'
                  ? TeslaTop()
                  : person.value == 'spacex'
                      ? SpaceXTop()
                      : ElonMuskTop();
            },
            valueListenable: person,
            // The child parameter is most helpful if the child is
            // expensive to build and does not depend on the value from
            // the notifier.
          )),
          Expanded(
              child: ValueListenableBuilder<String>(
            builder: (BuildContext context, String value, Widget? child) {
              // This builder will only get called when the _counter
              // is updated.
              return person.value == 'tesla'
                  ? TeslaCard(person)
                  : person.value == 'spacex'
                      ? SpaceXCard(person)
                      : ElonMuskCard();
            },
            valueListenable: person,
            // The child parameter is most helpful if the child is
            // expensive to build and does not depend on the value from
            // the notifier.
          )),
          // Container(child: TopSection()),
          // Container(child: Expanded(child: TeslaCard())),
          // // Container(child: TopSection()),
          // Container(child: Expanded(child: ElonMuskCard())),
        ],
      ),
    );
  }
}
