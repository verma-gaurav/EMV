import 'package:flutter/material.dart';
import '../../api/services/services.dart';
import '../../screens/detailscreen.dart';

class ElonMuskCard extends StatefulWidget {
  ElonMuskCard(ValueNotifier<String> newsTab);

  @override
  State<ElonMuskCard> createState() => _ElonMuskCardState();
}

class _ElonMuskCardState extends State<ElonMuskCard> {
  var news = [];

  @override
  void initState() {
    super.initState();
    // getNews();
    getNewsList();
  }

  getNewsList() async {
    var newsFromApi = await getNewsElonMusk();
    setState(() {
      news = newsFromApi;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: (news.length != 0)
          ? ListView.builder(
              shrinkWrap: true,
              itemCount: news.length,
              itemBuilder: (BuildContext context, int index) {
                var newsCall = news[index];
                String view = newsCall['view'].toString();
                String discuss_count = newsCall['discuss_count'].toString();
                String like_count = newsCall['like_count'].toString();
                String flag_count = newsCall['flag_count'].toString();
                return Container(
                  margin: EdgeInsets.all(5),
                  height: 130,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 9.0,
                        spreadRadius: 0.0,
                        offset:
                            Offset(2.0, 2.0), // shadow direction: bottom right
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
                                child: (newsCall['image_url'] == '')
                                    ? Image(
                                        image:
                                            AssetImage('images/user_image.png'),
                                      )
                                    : Image(
                                        image:
                                            NetworkImage(newsCall['image_url']),
                                      ),
                              ))),
                      Expanded(
                        flex: 5,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 5,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(top: 15),
                                child: Text(newsCall['title'],
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    overflow: TextOverflow.fade),
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Container(
                                    child: Row(
                                  children: [
                                    Expanded(
                                        flex: 4,
                                        child: Row(
                                          children: [
                                            Expanded(
                                                flex: 2,
                                                child: Container(
                                                    child: Icon(
                                                  Icons.calendar_month,
                                                  size: 15,
                                                  color: Colors.grey,
                                                ))),
                                            Expanded(
                                                flex: 8,
                                                child: Container(
                                                    child: Text(
                                                  newsCall['pubDate'],
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.grey),
                                                ))),
                                          ],
                                        )),
                                    Expanded(
                                        flex: 4,
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
                                                  discuss_count,
                                                  style: TextStyle(
                                                      color: Colors.grey),
                                                ))),
                                          ],
                                        )),
                                    Expanded(
                                        flex: 4,
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
                                                  ),
                                                )),
                                          ],
                                        ))
                                  ],
                                ))),
                            Expanded(
                                flex: 2,
                                child: Container(
                                    child: Row(
                                  children: [
                                    Expanded(
                                        flex: 4,
                                        child: Row(
                                          children: [
                                            Expanded(
                                                flex: 2,
                                                child: Container(
                                                  child: Icon(
                                                    Icons.favorite_outlined,
                                                    size: 15,
                                                    color: Colors.grey,
                                                  ),
                                                )),
                                            Expanded(
                                                flex: 8,
                                                child: Container(
                                                    child: Text(
                                                  like_count,
                                                  style: TextStyle(
                                                      color: Colors.grey),
                                                ))),
                                          ],
                                        )),
                                    Expanded(
                                        flex: 4,
                                        child: Row(
                                          children: [
                                            Expanded(
                                                flex: 2,
                                                child: Container(
                                                  child: Icon(
                                                    Icons.share,
                                                    size: 15,
                                                    color: Colors.grey,
                                                  ),
                                                )),
                                            Expanded(
                                                flex: 8,
                                                child: Container(
                                                    child: Text(
                                                  'admin_name',
                                                  style: TextStyle(
                                                      color: Colors.grey),
                                                ))),
                                          ],
                                        )),
                                    Expanded(
                                        flex: 4,
                                        child: Row(
                                          children: [
                                            Expanded(
                                                flex: 2,
                                                child: Container(
                                                  child: Icon(
                                                    Icons.flag,
                                                    size: 15,
                                                    color: Colors.grey,
                                                  ),
                                                )),
                                            Expanded(
                                                flex: 8,
                                                child: Container(
                                                    child: Text(
                                                  flag_count,
                                                  style: TextStyle(
                                                      color: Colors.grey),
                                                ))),
                                          ],
                                        ))
                                  ],
                                ))),
                            Expanded(
                                flex: 2,
                                child: Container(
                                    child: Row(
                                  children: [
                                    Expanded(
                                        flex: 4,
                                        child: Container(
                                          child: Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Colors.yellow,
                                          ),
                                        )),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            right: 10, bottom: 5)),
                                    Expanded(
                                        flex: 4,
                                        child: OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                            backgroundColor: Colors.grey,
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            padding: EdgeInsets.all(0),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        12.0)),
                                            primary: Colors.grey,
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => DetailScr(
                                                        newsCall['title'],
                                                        newsCall['description'],
                                                        newsCall['image_url'],
                                                        newsCall['pubDate'],
                                                        newsCall[
                                                                'discuss_count']
                                                            .toString())));
                                          },
                                          child: Text(
                                            "Read more",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white),
                                          ),
                                        )),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            right: 10, bottom: 5)),
                                    Expanded(
                                        flex: 4,
                                        child: OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                            backgroundColor: Colors.grey,
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            padding: EdgeInsets.all(0),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        12.0)),
                                            primary: Colors.grey,
                                          ),
                                          onPressed: () {},
                                          child: Text(
                                            "Read on",
                                            style: TextStyle(
                                                fontSize: 12,
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
