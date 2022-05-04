import 'package:emv_home/dropDown_price.dart';
import 'package:emv_home/popup_screens/comment.dart';
import 'package:emv_home/popup_screens/flag.dart';
import 'package:emv_home/sections/elon_musk/elon_musk_models.dart';
import 'package:emv_home/sections/elon_musk/elon_musk_top.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../api/services/services.dart';
import '../../popup_screens/star_rating.dart';
import '../../screens/detailscreen.dart';
import 'package:share_plus/share_plus.dart';
import 'package:like_button/like_button.dart';
import 'package:url_launcher/url_launcher.dart';
import '../drawer/leftSideDrawer.dart';
import '../drawer/rightSideDrawer.dart';
import 'homeScreen.dart';

class UsedTeslaCars extends StatefulWidget {
  @override
  State<UsedTeslaCars> createState() => _UsedTeslaCarsState();
}

class _UsedTeslaCarsState extends State<UsedTeslaCars> {
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
        body: ListView(
          children: <Widget>[
            Container(
                padding:
                    EdgeInsets.only(top: 10, bottom: 20, left: 5, right: 5),
                height: 400,
                // color: Colors.grey,
                child: Column(
                  children: [
                    Flexible(
                      child: Text(
                        'Elon Musk Vision is just a broker platform where buyers and sellers can connect and finalize their deal so please verify everything on your end too as we will not be responsible for any transaction',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          color: Colors.white,
                          height: 70,
                          width: (MediaQuery.of(context).size.width),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          alignment: Alignment.center,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                side: BorderSide(
                                  width: 1.5,
                                  color: Colors.black,
                                ),
                                minimumSize: Size.fromHeight(45),
                                primary: Colors.white),
                            onPressed: () {
                              print('filter');
                            },
                            icon: Icon(
                              Icons.filter_alt,
                              size: 20,
                              color: Colors.black,
                            ),
                            label: Text(
                              'Filter',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                    Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: '8 ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                  fontSize: 15)),
                          TextSpan(
                              text: 'TESLAS FOUND',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.04,
                      height: 70,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 6,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    minimumSize: Size.fromHeight(45),
                                    primary: Colors.red),
                                onPressed: () {
                                  print('favorite');
                                },
                                child: Text(
                                  'Favorite',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10)),
                          Expanded(
                            flex: 6,
                            child: DropDownPrice(),
                            // ElevatedButton(
                            //       style: ElevatedButton.styleFrom(
                            //           side: BorderSide(
                            //             width: 1.5,
                            //             color: Colors.black,
                            //           ),
                            //           elevation: 0,
                            //           minimumSize: Size.fromHeight(45),
                            //           primary: Colors.white),
                            //       onPressed: () {
                            //         print('favorite');
                            //       },
                            //       child: Text('Favorite',
                            //           style: TextStyle(color: Colors.black))),
                            // )
                          )
                        ],
                      ),
                    )
                  ],
                )),
            ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: 50,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  height: 450,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 199, 199, 199),
                        blurRadius: 9.0,
                        spreadRadius: 0.0,
                        offset:
                            Offset(2.0, 2.0), // shadow direction: bottom right
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 6,
                                    child: Container(
                                      margin: EdgeInsets.only(bottom: 3),
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '2017 Model\n\Model S',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.topRight,
                                      child: Text(
                                        '\$500000',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                    flex: 6,
                                  )
                                ],
                              ),
                              flex: 6,
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        '10025Drive\n\Top Speed 300\n\Illinois',
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    flex: 6,
                                  ),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Text.rich(
                                        TextSpan(
                                          children: <InlineSpan>[
                                            TextSpan(text: '\$6250/mo'),
                                            WidgetSpan(
                                                child: Icon(
                                              Icons.info,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              size: 15,
                                            )),
                                            TextSpan(
                                                text:
                                                    '\n\Apply for loan / Insurance')
                                          ],
                                        ),
                                        // textAlign: TextAlign.end,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    flex: 6,
                                  )
                                ],
                              ),
                              flex: 6,
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Image(
                                image: AssetImage('images/static_image.jpg')),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 10),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            Expanded(
                              child: FittedBox(
                                fit: BoxFit.fill,
                                child: Row(
                                  children: [
                                    ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.black),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ))),
                                        onPressed: () {},
                                        child: Text(
                                          'Inquire\n\Now',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w900,
                                              color: Colors.white),
                                        )),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 2)),
                                    ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.black),
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          'View\n\Details',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w900,
                                              color: Colors.white),
                                        )),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 2)),
                                    ElevatedButton.icon(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.black),
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ))),
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.favorite,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                      label: Text(
                                        'Favourite',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 2)),
                                  ],
                                ),
                              ),
                              flex: 6,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 6,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Interior Color : Silver Metallic Paint',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          flex: 6,
                                        ),
                                        Expanded(
                                          child: Text.rich(
                                            TextSpan(
                                              children: <InlineSpan>[
                                                WidgetSpan(
                                                    child: Icon(
                                                  Icons.contrast,
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0),
                                                  size: 13,
                                                )),
                                                TextSpan(
                                                  text: 'Base Autopilot (AP)',
                                                  style:
                                                      TextStyle(fontSize: 10),
                                                ),
                                              ],
                                            ),
                                            style: TextStyle(fontSize: 13),
                                          ),
                                          flex: 6,
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 6,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Exterior Color Deep Blue Metallic Paint',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          flex: 6,
                                        ),
                                        Expanded(
                                          child: Text.rich(
                                            TextSpan(
                                              children: <InlineSpan>[
                                                WidgetSpan(
                                                    child: Icon(
                                                  Icons.check,
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0),
                                                  size: 13,
                                                )),
                                                TextSpan(
                                                  text:
                                                      'Vehicle History : Previously Repaired',
                                                  style:
                                                      TextStyle(fontSize: 10),
                                                ),
                                              ],
                                            ),
                                            style: TextStyle(fontSize: 13),
                                          ),
                                          flex: 6,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              flex: 6,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ));
  }
}
