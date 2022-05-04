import 'package:emv_home/popup_screens/comment.dart';
import 'package:emv_home/popup_screens/flag.dart';
import 'package:emv_home/sections/elon_musk/elon_musk_models.dart';
import 'package:emv_home/sections/elon_musk/elon_musk_top.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../api/services/services.dart';
import '../../popup_screens/star_rating.dart';
import '../../screens/detailscreen.dart';
import 'package:share_plus/share_plus.dart';
import 'package:like_button/like_button.dart';

import 'tesla_models.dart';
import 'tesla_top.dart';

class TeslaCard extends StatefulWidget {
  TeslaCard(ValueNotifier<String> newsTab);

  @override
  State<TeslaCard> createState() => _TeslaCardState();
}

class _TeslaCardState extends State<TeslaCard> {
  bool isLiked = false;
  int likeCount = 10;
  var news = [];
  void _shareContent() {
    Share.share("I am Sharing this through share button");
  }

  @override
  void initState() {
    super.initState();
    // getNews();
    getNewsList();
  }

  getNewsList() async {
    var newsFromApi = await getNewsTesla();
    setState(() {
      news = newsFromApi;
    });
  }

  @override
  Widget build(BuildContext context) {
    double size = 15;
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
                var pubDate = newsCall['pubDate'];
                if (index == 0) {
                  return TeslaModels();
                }
                if (index == 1) {
                  return TeslaTop();
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
                                                  color: Colors.teal,
                                                ))),
                                            Expanded(
                                                flex: 8,
                                                child: Container(
                                                    child: Text(
                                                  pubDate.substring(0, 10),
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.grey),
                                                ))),
                                          ],
                                        )),
                                    Expanded(
                                        flex: 4,
                                        child: RawMaterialButton(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          onPressed: () {
                                            showDialog(
                                                context: context,
                                                builder: (ctx) {
                                                  return Comment();
                                                });
                                          },
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  flex: 2,
                                                  child: Container(
                                                    child: Icon(
                                                      Icons.comment,
                                                      size: 15,
                                                      color: Colors.blue,
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
                                          ),
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
                                                    color: Colors.green,
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
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 4,
                                      child: RawMaterialButton(
                                        onPressed: () {
                                          showDialog(
                                              context: context,
                                              builder: (ctx) {
                                                return const Flag();
                                              });
                                        },
                                        child: Row(
                                          children: [
                                            Expanded(
                                                flex: 2,
                                                child: Container(
                                                    child: Icon(
                                                  Icons.flag,
                                                  size: 15,
                                                  color: Colors.black,
                                                ))),
                                            Expanded(
                                                flex: 8,
                                                child: Container(
                                                    child: Text(
                                                  flag_count,
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.grey),
                                                ))),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        flex: 4,
                                        child: RawMaterialButton(
                                          onPressed: _shareContent,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  flex: 2,
                                                  child: Container(
                                                    child: Icon(
                                                      Icons.share,
                                                      size: 15,
                                                      color: Colors.blue,
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
                                          ),
                                        )),
                                    Expanded(
                                      flex: 4,
                                      child: Container(
                                        margin: EdgeInsets.only(right: 30),
                                        alignment: Alignment.centerLeft,
                                        child: LikeButton(
                                          size: size,
                                          isLiked: isLiked,
                                          likeCount: likeCount,
                                          likeBuilder: (isLiked) {
                                            final color = isLiked
                                                ? Colors.red
                                                : Colors.grey;
                                            return Icon(Icons.favorite,
                                                color: color, size: size);
                                          },
                                          likeCountPadding: EdgeInsets.only(
                                              left: 5, right: 15),
                                          countBuilder: (count, isLiked, text) {
                                            final color = Colors.grey;
                                            return Text(text,
                                                style: TextStyle(
                                                  color: color,
                                                  fontSize: 10,
                                                ));
                                          },
                                          onTap: (isLiked) async {
                                            likeCount += this.isLiked ? 1 : -1;
                                            return !isLiked;
                                          },
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                            Expanded(
                                flex: 2,
                                child: Container(
                                    child: Row(
                                  children: [
                                    Expanded(
                                        flex: 4,
                                        child: FlatButton(
                                            padding: EdgeInsets.zero,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            onPressed: () {
                                              showDialog(
                                                  context: context,
                                                  builder: (ctx) {
                                                    return StarRating();
                                                  });
                                            },
                                            child: FittedBox(
                                              fit: BoxFit.fill,
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.star_border_outlined,
                                                    color: Colors.yellow,
                                                  ),
                                                  Icon(
                                                    Icons.star_border_outlined,
                                                    color: Colors.yellow,
                                                  ),
                                                  Icon(
                                                    Icons.star_border_outlined,
                                                    color: Colors.yellow,
                                                  ),
                                                  Icon(
                                                    Icons.star_border_outlined,
                                                    color: Colors.yellow,
                                                  ),
                                                  Icon(
                                                    Icons.star_border_outlined,
                                                    color: Colors.yellow,
                                                  ),
                                                ],
                                              ),
                                            ))),
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
                                      child: Material(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0)),
                                        color: Colors.grey,
                                        child: InkWell(
                                          onTap: () => launch(newsCall['link']),
                                          child: Container(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Read on",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
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
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              ),
            ),
    );
  }
}
