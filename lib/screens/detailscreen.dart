import 'package:emv_home/api/newsArticleModel.dart';
import 'package:emv_home/post_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:share_plus/share_plus.dart';
import '../sections/space_X/space_X_Card.dart';

class DetailScr extends StatefulWidget {
  // var Postdata = [];
  // Getnewsdata(NewsPostData) {
  //   Postdata = NewsPostData;
  // }
  final title;
  DetailScr({this.title});

  @override
  State<DetailScr> createState() => _DetailScrState();

  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _DetailScrState extends State<DetailScr> {
  void _shareContent() {
    Share.share('the current news link');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(""),
      ),
      backgroundColor: Color.fromARGB(255, 136, 136, 136),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
              child: Container(
            height: 800,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
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
                  'This is the sample of news Heading hope this works fine',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Icon(
                              Icons.calendar_month,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ),
                          flex: 3),
                      Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Icon(
                              Icons.comment_rounded,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ),
                          flex: 2),
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
                  child: Image(image: AssetImage('images/user_image.png')),
                ),
                Container(
                  child: Text("sdfsd"),
                ),
                Container(
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
              ],
            ),
          )),
        ),
      ),
    );
  }
}









// import 'package:flutter/material.dart';

// class DetailsScreen extends StatefulWidget {
//   String title, author, urlToImage, publishedAt, description;

//   DetailsScreen(
//       {required this.title,
//       required this.author,
//       required this.description,
//       required this.publishedAt,
//       required this.urlToImage,
//       pubDate});

//   @override
//   _DetailsScreenState createState() => _DetailsScreenState();
// }

// class _DetailsScreenState extends State<DetailsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Stack(
//           children: <Widget>[
//             Image.network(
//               widget.urlToImage,
//               fit: BoxFit.cover,
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.height * 0.5,
//             ),
//             Padding(
//               padding: EdgeInsets.fromLTRB(0.0, 350.0, 0.0, 0.0),
//               child: Container(
//                 height: MediaQuery.of(context).size.height,
//                 width: MediaQuery.of(context).size.width,
//                 child: Material(
//                   borderRadius: BorderRadius.circular(35.0),
//                   child: Column(
//                     children: <Widget>[
//                       Padding(
//                         padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
//                         child: Text(
//                           widget.title,
//                           style: TextStyle(
//                             fontSize: 30.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                       Text(
//                         widget.publishedAt.substring(0, 10),
//                         style: TextStyle(
//                           fontSize: 20.0,
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.all(20.0),
//                         child: Text(
//                           widget.description,
//                           style: TextStyle(
//                             fontSize: 25.0,
//                           ),
//                         ),
//                       ),
//                       Text(
//                         widget.author,
//                         style: TextStyle(
//                           fontSize: 15.0,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
