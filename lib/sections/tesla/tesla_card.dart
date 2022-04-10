import 'package:flutter/material.dart';
import '../../api/services/services.dart';

class TeslaCard extends StatefulWidget {
  @override
  final person;
  TeslaCard(this.person);
  State<TeslaCard> createState() => _TeslaCardState(this.person);
}

class _TeslaCardState extends State<TeslaCard> {
  var news = [];
  final person;
  _TeslaCardState(this.person) : super();
  @override
  void initState() {
    super.initState();
    // getNews();
    getNewsList();
  }

  getNewsList() async {
    var newsFromApi = await getNewsTesla(this.person);
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
                return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(5),
                    primary: Colors.white,
                    onPrimary: Colors.grey,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    maximumSize: Size(200, 150),
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) =>
                    //             DetailScr.Getnewsdata(newspos)));
                  },
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
                                child: Text(newsCall['description'],
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
                                          onPressed: () {},
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



// import 'package:flutter/material.dart';
// import 'package:emv_home/dropDown.dart';
// import 'package:emv_home/screens/chatRoom/chatScreens/homePage.dart';
// import 'package:flutter/cupertino.dart';
// import '../reusableCard.dart';
// import '../../screens/chatRoom/chatScreens/homePage.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// var elonMuskNewsItem;

// class TeslaWidget extends StatefulWidget {
//   const TeslaWidget({
//     Key? key,
//     required this.smallButtons,
//   }) : super(key: key);

//   final ButtonStyle smallButtons;

//   @override
//   State<TeslaWidget> createState() => _TeslaWidgetState();
// }

// class _TeslaWidgetState extends State<TeslaWidget> {
//   @override
//   Widget build(BuildContext context) {
//     // void printText() async {
//     //   try {
//     //     var testurl =
//     //         Uri.parse('https://jsonplaceholder.typicode.com/albums/1');

//     //     http.Response response = await http.get(testurl);
//     //     print(response);
//     //     print('app function me ho');
//     //     if (response.statusCode == 200) {
//     //       String data = response.body;
//     //       print(data);
//     //       var decodedData = jsonDecode(data);
//     //       print('app response body me ho');
//     //       return decodedData;
//     //     } else {
//     //       print('text');
//     //     }
//     //   } catch (e) {
//     //     print(e);
//     //     print('code fal gaya');
//     //   }
//     // }

//     return Container(
//       margin: const EdgeInsets.only(top: 0),
//       width: 100,
//       decoration: const BoxDecoration(),
//       child: Column(
//         children: <Widget>[
//           Container(
//               margin: const EdgeInsets.only(bottom: 5),
//               decoration: BoxDecoration(
//                   color: Colors.white, borderRadius: BorderRadius.circular(10)),
//               child: Column(
//                 children: [
//                   SizedBox(
//                     child: Row(
//                       children: const [
//                         Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
//                         Image(
//                           image: AssetImage('images/tesla.png'),
//                           height: 250,
//                           width: 85,
//                         ),
//                         Padding(padding: EdgeInsets.only(left: 10)),
//                         Text(
//                           'TESLA',
//                           style: TextStyle(color: Colors.red),
//                         ),
//                         Padding(padding: EdgeInsets.only(left: 10)),
//                         Text(
//                           'USD 838.29',
//                           style: TextStyle(
//                             color: Color.fromARGB(255, 119, 119, 119),
//                           ),
//                         ),
//                         Padding(padding: EdgeInsets.only(left: 10)),
//                         Text(
//                           '-1.00 (-0.12%)',
//                           style: TextStyle(color: Colors.red),
//                         ),
//                       ],
//                     ),
//                     height: 30,
//                   ),
//                   SizedBox(
//                     height: 25,
//                     child: ListView(
//                       scrollDirection: Axis.horizontal,
//                       children: <Widget>[
//                         const Padding(
//                             padding: EdgeInsets.symmetric(horizontal: 5)),
//                         ElevatedButton(
//                           style: widget.smallButtons,
//                           onPressed: () => print('News'),
//                           child: const Text(
//                             'NEWS',
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 13,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         const Padding(
//                             padding: EdgeInsets.symmetric(horizontal: 5)),
//                         ButtonTheme(
//                           child: ElevatedButton(
//                             style: widget.smallButtons,
//                             onPressed: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (_) => HomePage()));
//                             },
//                             // onPressed: () => print('Forum'),
//                             child: const Text(
//                               'FORUM',
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 13,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                         ),
//                         const Padding(
//                             padding: EdgeInsets.symmetric(horizontal: 5)),
//                         ButtonTheme(
//                           child: ElevatedButton(
//                             style: widget.smallButtons,
//                             onPressed: () => print('MULTIMEDIA'),
//                             child: const Text(
//                               'MULTIMEDIA',
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 13,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                         ),
//                         const Padding(
//                             padding: EdgeInsets.symmetric(horizontal: 5)),
//                         ButtonTheme(
//                           child: ElevatedButton(
//                             style: widget.smallButtons,
//                             onPressed: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (_) => HomePage()));
//                             },
//                             child: const Text(
//                               'CHAT ROOM',
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 13,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   //search and filter field
//                   Container(
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(25)),
//                     height: 40,
//                     margin:
//                         const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
//                     child: Row(
//                       children: [
//                         Expanded(
//                           flex: 6,
//                           child: Container(
//                             margin: const EdgeInsets.symmetric(horizontal: 1),
//                             padding: const EdgeInsets.symmetric(horizontal: 5),
//                             decoration: BoxDecoration(
//                                 color: const Color.fromARGB(255, 223, 223, 223),
//                                 borderRadius: BorderRadius.circular(10),
//                                 border:
//                                     Border.all(color: Colors.grey, width: 2)),
//                             child: const CupertinoSearchTextField(
//                                 backgroundColor: Colors.white),
//                           ),
//                         ),
//                         Expanded(
//                           flex: 3,
//                           child: Container(
//                               margin: const EdgeInsets.symmetric(horizontal: 1),
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 5),
//                               decoration: BoxDecoration(
//                                   color:
//                                       const Color.fromARGB(255, 223, 223, 223),
//                                   borderRadius: BorderRadius.circular(10),
//                                   border:
//                                       Border.all(color: Colors.grey, width: 2)),
//                               child: const DropDownLst()),
//                         ),
//                         Expanded(
//                             flex: 3,
//                             child: Container(
//                                 padding:
//                                     const EdgeInsets.symmetric(horizontal: 5),
//                                 decoration: BoxDecoration(
//                                     color: const Color.fromARGB(
//                                         255, 223, 223, 223),
//                                     borderRadius: BorderRadius.circular(10),
//                                     border: Border.all(
//                                         color: Colors.grey, width: 2)),
//                                 child: const DropDownLst())),
//                       ],
//                     ),
//                   ),
//                 ],
//               )),
//           const Divider(
//             height: 10,
//           ),
//           // ButtonTheme(
//           //   child: ReusableCard(
//           //       raisedButtonStyle: widget.raisedButtonStyle,
//           //       NewsItem: elonMuskNewsItem),
//           // ),
//           Center(
//               child: Container(
//             margin: EdgeInsets.symmetric(vertical: 10),
//             decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 73, 69, 138),
//                 borderRadius: BorderRadius.circular(30)),
//             child: FlatButton(
//               onPressed: () {
//                 print('loading');
//                 // printText();
//               },
//               child: Text(
//                 'Load more',
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           )),
//         ],
//       ),
//     );
//   }
// }
