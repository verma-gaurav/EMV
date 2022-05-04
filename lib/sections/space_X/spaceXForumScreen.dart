import 'package:flutter/material.dart';
import '../../../../api/services/services.dart';
import '../../../../screens/detailscreen.dart';
import '../../drawer/leftSideDrawer.dart';
import '../../drawer/rightSideDrawer.dart';
import '../../screens/homeScreen.dart';

class SpaceXForumScreen extends StatefulWidget {
  @override
  State<SpaceXForumScreen> createState() => _SpaceXForumScreenState();
}

class _SpaceXForumScreenState extends State<SpaceXForumScreen> {
  var forum = [];

  @override
  void initState() {
    super.initState();

    getForumList();
  }

  getForumList() async {
    var forumFromApi = await getSpaceXForum();
    if (mounted) {
      setState(() {
        forum = forumFromApi;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(234, 241, 241, 241),
      //App bar
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
      body: Container(
        child: (forum.length != 0)
            ? ListView.builder(
                shrinkWrap: true,
                itemCount: forum.length,
                itemBuilder: (BuildContext context, int index) {
                  var forumCall = forum[index];
                  String view = forumCall['view'].toString();
                  // String discuss_count = forumCall['discuss_count'].toString();
                  String flag = forumCall['flag'].toString();
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
                                              width: 300,
                                              height: 350,
                                              child: Center(
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Create a Topic",
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 15,
                                                              vertical: 10),
                                                      child: TextField(
                                                        decoration: InputDecoration(
                                                            filled: true,
                                                            fillColor:
                                                                Colors.white,
                                                            border:
                                                                OutlineInputBorder(),
                                                            labelStyle:
                                                                TextStyle(
                                                                    color: Colors
                                                                        .black),
                                                            focusedBorder: OutlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Colors
                                                                        .black)),
                                                            hintText: 'Title'),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                        horizontal: 15,
                                                      ),
                                                      child: TextField(
                                                        maxLines: 4,
                                                        decoration: InputDecoration(
                                                            filled: true,
                                                            fillColor:
                                                                Colors.white,
                                                            border:
                                                                OutlineInputBorder(),
                                                            labelStyle:
                                                                TextStyle(
                                                                    color: Colors
                                                                        .black),
                                                            focusedBorder: OutlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Colors
                                                                        .black)),
                                                            hintText:
                                                                'Description'),
                                                      ),
                                                    ),
                                                    ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            primary:
                                                                Colors.blue,
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    vertical: 6,
                                                                    horizontal:
                                                                        15)),
                                                        onPressed: () {
                                                          showDialog(
                                                              context: context,
                                                              builder: (ctx) {
                                                                return Dialog(
                                                                    shape: RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                20)),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          300,
                                                                      height:
                                                                          200,
                                                                      child:
                                                                          Center(
                                                                        child:
                                                                            Column(
                                                                          children: [
                                                                            Padding(padding: EdgeInsets.only(top: 30)),
                                                                            Text(
                                                                              'Data added Successfuly',
                                                                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                                                            ),
                                                                            ElevatedButton(
                                                                                style: ElevatedButton.styleFrom(alignment: Alignment.centerRight, primary: Colors.blue, padding: EdgeInsets.symmetric(vertical: 6, horizontal: 15)),
                                                                                onPressed: () => Navigator.pop(context),
                                                                                child: Text('OK'))
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ));
                                                              });
                                                        },
                                                        child: Text('Save')),
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
                  } else {
                    return Container(
                      margin: EdgeInsets.all(5),
                      height: 150,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 9.0,
                            spreadRadius: 0.0,
                            offset: Offset(
                                2.0, 2.0), // shadow direction: bottom right
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 3,
                              child: Container(
                                  margin: EdgeInsets.all(5),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: (forumCall['avatar'] == '')
                                        ? Image(
                                            image: AssetImage(
                                                'images/user_image.png'),
                                          )
                                        : Image(
                                            image: NetworkImage(
                                                forumCall['avatar']),
                                          ),
                                  ))),
                          Expanded(
                            flex: 5,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(top: 15),
                                    child: Text(forumCall['question'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        overflow: TextOverflow.fade),
                                  ),
                                ),
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                      child: Text(forumCall['description']),
                                    )),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Expanded(
                                          flex: 3,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  flex: 0,
                                                  child: Container(
                                                      child: Text(
                                                    "BY :" + forumCall['name'],
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.grey),
                                                  ))),
                                            ],
                                          )),
                                      Expanded(
                                          flex: 3,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  flex: 2,
                                                  child: Container(
                                                    child: Icon(
                                                      Icons.calendar_month,
                                                      size: 17,
                                                      color: Colors.grey,
                                                    ),
                                                  )),
                                              Expanded(
                                                  flex: 8,
                                                  child: Container(
                                                      child: Text(
                                                    forumCall['created_at'],
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 10),
                                                  ))),
                                            ],
                                          )),
                                    ],
                                  ),
                                  flex: 3,
                                ),
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                        child: Row(
                                      children: [
                                        Expanded(
                                            flex: 3,
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    flex: 2,
                                                    child: Container(
                                                      child: Icon(
                                                        Icons.comment,
                                                        size: 15,
                                                        color: Colors.grey,
                                                      ),
                                                    )),
                                                Expanded(
                                                    flex: 8,
                                                    child: Container(
                                                        child: Text(
                                                      flag,
                                                      style: TextStyle(
                                                          color: Colors.grey),
                                                    ))),
                                              ],
                                            )),
                                        Expanded(
                                            flex: 3,
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    flex: 2,
                                                    child: Container(
                                                      child: Icon(
                                                        Icons.remove_red_eye,
                                                        size: 15,
                                                        color: Colors.grey,
                                                      ),
                                                    )),
                                                Expanded(
                                                    flex: 8,
                                                    child: Container(
                                                        child: Text(
                                                      view,
                                                      style: TextStyle(
                                                          color: Colors.grey),
                                                    ))),
                                              ],
                                            )),
                                      ],
                                    ))),
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                        child: Row(
                                      children: [
                                        Expanded(
                                            flex: 4,
                                            child: Container(
                                                child: OutlinedButton(
                                                    style: OutlinedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Colors.red,
                                                      tapTargetSize:
                                                          MaterialTapTargetSize
                                                              .shrinkWrap,
                                                      padding:
                                                          EdgeInsets.all(0),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5)),
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
                                            padding: EdgeInsets.only(
                                                right: 3, bottom: 5)),
                                        Expanded(
                                            flex: 4,
                                            child: OutlinedButton(
                                              style: OutlinedButton.styleFrom(
                                                backgroundColor: Colors.red,
                                                tapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                                padding: EdgeInsets.all(0),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                primary: Colors.grey,
                                              ),
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) => DetailScr(
                                                            forumCall[
                                                                'question'],
                                                            forumCall[
                                                                'description'],
                                                            forumCall['avatar'],
                                                            forumCall[
                                                                'created_at'],
                                                            forumCall['flag']
                                                                .toString())));
                                              },
                                              child: Text(
                                                "READ MORE",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.white),
                                              ),
                                            )),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                right: 3, bottom: 5)),
                                        Expanded(
                                            flex: 4,
                                            child: OutlinedButton(
                                              style: OutlinedButton.styleFrom(
                                                backgroundColor: Colors.red,
                                                tapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                                padding: EdgeInsets.all(0),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                primary: Colors.grey,
                                              ),
                                              onPressed: () {},
                                              child: Text(
                                                "FLAG 0 OF 10",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.white),
                                              ),
                                            )),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                right: 10, bottom: 5)),
                                      ],
                                    ))),
                                Padding(padding: EdgeInsets.only(bottom: 5)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                },
              )
            : Container(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
      ),
    );
  }
}
