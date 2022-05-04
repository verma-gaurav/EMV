import 'package:flutter/material.dart';
import '../../../../../api/services/services.dart';
import '../../../../../screens/detailscreen.dart';
import '../../drawer/leftSideDrawer.dart';
import '../../drawer/rightSideDrawer.dart';
import '../../screens/homeScreen.dart';
import 'package:flutter_html/flutter_html.dart';

class TeslaMultimedia extends StatefulWidget {
  @override
  State<TeslaMultimedia> createState() => _TeslaMultimediaState();
}

class _TeslaMultimediaState extends State<TeslaMultimedia> {
  var forum = [];

  @override
  void initState() {
    super.initState();

    getMultimediaList();
  }

  getMultimediaList() async {
    var forumFromApi = await getTeslaMultimedia();
    setState(() {
      forum = forumFromApi;
    });
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
      body: (forum.length != 0)
          ? ListView.builder(
              shrinkWrap: true,
              itemCount: forum.length,
              itemBuilder: (BuildContext context, int index) {
                var forumCall = forum[index];
                String view = forumCall['view'].toString();
                // String discuss_count = forumCall['discuss_count'].toString();
                String flag = forumCall['flag'].toString();
                String rating = forumCall['rating'].toString();
                // String flag_count = forumCall['flag_count'].toString();
                if (index == 0) {
                  return Container(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 8,
                          child: Container(),
                        ),
                        Expanded(
                          flex: 4,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                alignment: Alignment.centerRight,
                                primary: Colors.red,
                                padding: EdgeInsets.symmetric(
                                    vertical: 6, horizontal: 15)),
                            child: Text(
                              'CREATE TOPIC',
                              textAlign: TextAlign.center,
                            ),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (ctx) {
                                    return Dialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        elevation: 16,
                                        child: Container(
                                            padding: EdgeInsets.only(top: 40),
                                            height: 200,
                                            width: 300,
                                            child: Center(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "Multimedia credentials",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  // Padding(
                                                  //     padding: EdgeInsets.only(
                                                  //         bottom: 5)),
                                                  // ElevatedButton(
                                                  //     style: ElevatedButton
                                                  //         .styleFrom(
                                                  //       primary: Colors.green,
                                                  //       shape:
                                                  //           new RoundedRectangleBorder(
                                                  //         borderRadius:
                                                  //             new BorderRadius
                                                  //                     .circular(
                                                  //                 30.0),
                                                  //       ),
                                                  //     ),
                                                  //     onPressed: () {},
                                                  //     child: Text(
                                                  //         "Tesla Energy",
                                                  //         style: TextStyle(
                                                  //             color: Colors
                                                  //                 .white))),
                                                  // ElevatedButton(
                                                  //     style: ElevatedButton
                                                  //         .styleFrom(
                                                  //       primary: Colors.red,
                                                  //       shape:
                                                  //           new RoundedRectangleBorder(
                                                  //         borderRadius:
                                                  //             new BorderRadius
                                                  //                     .circular(
                                                  //                 30.0),
                                                  //       ),
                                                  //     ),
                                                  //     onPressed: () {
                                                  //       Navigator.pop(context);
                                                  //     },
                                                  //     child: Text(
                                                  //         "Tesla Motors",
                                                  //         style: TextStyle(
                                                  //             color: Colors
                                                  //                 .white))),
                                                ],
                                              ),
                                            )));
                                  });
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                }

                return Container(
                  margin: EdgeInsets.all(5),
                  height: 130,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 130, 130, 130),
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
                        flex: 4,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Container(
                                  margin: EdgeInsets.all(5),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: (forumCall['avatar'] == '')
                                        ? Image(
                                            image: AssetImage('image'),
                                          )
                                        : Image(
                                            image: NetworkImage(
                                                forumCall['avatar']),
                                          ),
                                  )),
                            ),
                            Expanded(
                              flex: 8,
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Container(
                                        alignment: Alignment.center,
                                        child: Html(
                                            data: forumCall['description'],
                                            style: {
                                              "p": Style(
                                                  color: Colors.black,
                                                  fontSize: FontSize.large,
                                                  fontWeight: FontWeight.bold)
                                            })),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'BY :' + forumCall['name'],
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.grey),
                                        )),
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 4)),
                                  Expanded(
                                    flex: 2,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            child: Icon(
                                                Icons.calendar_month_outlined,
                                                color: Colors.grey),
                                          ),
                                        ),
                                        Expanded(
                                            flex: 10,
                                            child: Container(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                forumCall['created_at'],
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ))
                                      ],
                                    ),
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 4)),
                                  Expanded(
                                      flex: 2,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              alignment: Alignment.centerLeft,
                                              child: Icon(
                                                  Icons
                                                      .favorite_border_outlined,
                                                  color: Colors.grey),
                                            ),
                                          ),
                                          Expanded(
                                              flex: 4,
                                              child: Container(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  forumCall['type'],
                                                  style: TextStyle(
                                                      color: Colors.grey),
                                                ),
                                              )),
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              alignment: Alignment.centerLeft,
                                              child: Icon(Icons.comment,
                                                  color: Colors.grey),
                                            ),
                                          ),
                                          Expanded(
                                              flex: 4,
                                              child: Container(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  flag,
                                                  style: TextStyle(
                                                      color: Colors.grey),
                                                ),
                                              ))
                                        ],
                                      )),
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 4)),
                                  Expanded(
                                    flex: 2,
                                    child: Expanded(
                                      flex: 2,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              alignment: Alignment.centerLeft,
                                              child: Icon(Icons.remove_red_eye,
                                                  color: Colors.grey),
                                            ),
                                          ),
                                          Expanded(
                                              flex: 4,
                                              child: Container(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  view + 'VIEWS',
                                                  style: TextStyle(
                                                      color: Colors.grey),
                                                ),
                                              )),
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              alignment: Alignment.centerLeft,
                                              child: Icon(
                                                Icons.star_outlined,
                                                color: Colors.yellow,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 4,
                                            child: Container(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                rating,
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: Container(
                                      child: OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                            backgroundColor: Colors.red,
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            primary: Colors.grey,
                                          ),
                                          onPressed: () {},
                                          child: Text(
                                            "SHARE",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          )))),
                              Padding(
                                  padding:
                                      EdgeInsets.only(right: 3, bottom: 5)),
                              Expanded(
                                  flex: 4,
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.red,
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      primary: Colors.grey,
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => DetailScr(
                                                  forumCall['question'],
                                                  forumCall['description'],
                                                  forumCall['avatar'],
                                                  forumCall['created_at'],
                                                  forumCall['flag']
                                                      .toString())));
                                    },
                                    child: Text(
                                      "READ MORE",
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white),
                                    ),
                                  )),
                              Padding(
                                  padding:
                                      EdgeInsets.only(right: 3, bottom: 5)),
                              Expanded(
                                  flex: 4,
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.red,
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      primary: Colors.grey,
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "FLAG 0 OF 10",
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white),
                                    ),
                                  )),
                              Padding(
                                  padding:
                                      EdgeInsets.only(right: 10, bottom: 5)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          : Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
    );
  }
}
