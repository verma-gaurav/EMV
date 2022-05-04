import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import '../drawer/leftSideDrawer.dart';
import '../drawer/rightSideDrawer.dart';
import '../sections/space_X/space_X_Card.dart';

class DetailScr extends StatefulWidget {
  var Postdata = [];

  final title, description, image_url, pubDate, discuss_count;
  DetailScr(this.title, this.description, this.image_url, this.pubDate,
      this.discuss_count);

  @override
  State<DetailScr> createState() => _DetailScrState(this.title,
      this.description, this.image_url, this.pubDate, this.discuss_count);

  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _DetailScrState extends State<DetailScr> {
  final title, description, image_url, pubDate, discuss_count;
  _DetailScrState(this.title, this.description, this.image_url, this.pubDate,
      this.discuss_count);
  void _shareContent() {
    Share.share(title);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
              child: Container(
            // margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'TESLA MOTORS / NIO / NEWS',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Text(
                  this.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Icon(
                                  Icons.calendar_month,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5)),
                              Expanded(
                                  flex: 9,
                                  child: Text(
                                    this.pubDate,
                                    style: TextStyle(
                                        fontSize: 9, color: Colors.grey),
                                  ))
                            ],
                          ),
                          flex: 3),
                      Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Icon(
                                  Icons.comment,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5)),
                              Expanded(
                                  flex: 9,
                                  child: Text(
                                    this.discuss_count,
                                    style: TextStyle(
                                        fontSize: 9, color: Colors.grey),
                                  ))
                            ],
                          ),
                          flex: 3),
                      Expanded(
                        flex: 2,
                        child: IconButton(
                          alignment: Alignment.centerLeft,
                          icon: Icon(
                            Icons.share,
                            color: Colors.grey,
                            size: 20,
                          ),
                          onPressed: _shareContent,
                        ),
                      ),
                      Expanded(
                          child: Container(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.star,
                                size: 20,
                                color: Colors.yellow,
                              )),
                          flex: 6)
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Image(
                      image: NetworkImage(
                    this.image_url,
                  )),
                ),
                Container(
                  child: Text(
                    this.description,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(top: 25),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'LEAVE A COMMENT',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter a search term',
                    ),
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 40, 26, 149),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                    ),
                    onPressed: () {},
                    child: Text("Submit",
                        style: TextStyle(color: Colors.white, fontSize: 15)))
              ],
            ),
          )),
        ),
      ),
    );
  }
}
