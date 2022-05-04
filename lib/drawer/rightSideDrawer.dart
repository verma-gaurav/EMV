// ignore_for_file: unnecessary_const, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:emv_home/drawer/popularPostsCard.dart';
import 'package:social_embed_webview/platforms/twitter.dart';
import 'package:social_embed_webview/social_embed_webview.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'popularPostsCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';

String tweetContent =
    """<a class="twitter-timeline" href="https://twitter.com/elonmusk?ref_src=twsrc%5Etfw">Tweets by elonmusk</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>""";

class RightSideDrawer extends StatelessWidget {
  const RightSideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SafeArea(
        child: Column(
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(top: 5)),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 5)),
                const Expanded(
                  flex: 2,
                  child: Text(
                    'Tweets by Elon Musk',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Expanded(flex: 2, child: Container())
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      color: Colors.red,
                    ),
                    padding: const EdgeInsets.only(
                        right: 30, top: 10, bottom: 10, left: 5),
                    margin: const EdgeInsets.only(left: 0, top: 10),
                    child: const Text(
                      'Populer Posts',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(flex: 2, child: Container())
              ],
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 2)),
            Container(
              height: 250,
              width: 300,
              decoration: const BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Colors.grey),
              child: Card(
                color: Colors.black,
                elevation: 10,
                semanticContainer: true,
                child: ListView(
                  children: const [
                    Padding(padding: EdgeInsets.all(1)),
                    PopularPostsCards(),
                    Padding(padding: EdgeInsets.all(1)),
                    PopularPostsCards(),
                    Padding(padding: EdgeInsets.all(1)),
                    PopularPostsCards(),
                    Padding(padding: EdgeInsets.all(1)),
                    PopularPostsCards(),
                    Padding(padding: EdgeInsets.all(1)),
                    PopularPostsCards(),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      color: Color.fromARGB(255, 34, 32, 158),
                    ),
                    padding: const EdgeInsets.only(
                        right: 30, top: 10, bottom: 10, left: 5),
                    margin: const EdgeInsets.only(left: 0, top: 5),
                    child: const Text(
                      'Twittter Posts',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(flex: 2, child: Container())
              ],
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 2)),
            Container(
              height: 250,
              width: 300,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SocialEmbed(
                          socialMediaObj:
                              TwitterEmbedData(embedHtml: tweetContent)),
                    ],
                  ),
                ),
              ),
            ),
            ListTile(
                dense: true,
                leading: const Icon(Icons.email_outlined),
                iconColor: Colors.red,
                title: Link(
                  uri: Uri.parse('mailto:'),
                  builder: (context, followLink) => GestureDetector(
                    child: Text('devtrst@gmail.comm'),
                    onTap: followLink,
                  ),
                )),
            ListTile(
                dense: true,
                leading: const Icon(Icons.call_outlined),
                iconColor: Colors.red,
                title: Link(
                  uri: Uri.parse('tel:'),
                  builder: (context, followLink) => GestureDetector(
                    child: Text('(123) 222-000'),
                    onTap: followLink,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

// class DividingLine extends StatelessWidget {
//   const DividingLine({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Divider(
//       height: 2,
//       thickness: 2,
//       indent: 25,
//       endIndent: 25,
//       color: Colors.grey,
//     );
//   }
// }

// const Divider divider = Divider(
//   height: 2,
//   thickness: 2,
//   indent: 25,
//   endIndent: 25,
//   color: Colors.grey,
// );
