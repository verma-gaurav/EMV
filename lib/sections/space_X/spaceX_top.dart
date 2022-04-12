import 'package:emv_home/screens/chatRoom/chatScreens/chatPage.dart';
import 'package:emv_home/sections/space_X/spaceXForumScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../dropDown_Relevance.dart';
import '../../dropDown_duration.dart';
import '../../screens/homeScreen.dart';

class SpaceXTop extends StatelessWidget {
  SpaceXTop({Key? key}) : super(key: key);
  final ButtonStyle smallButtons = ElevatedButton.styleFrom(
    onPrimary: const Color.fromARGB(255, 185, 185, 185),
    primary: const Color.fromARGB(255, 27, 103, 168),
    minimumSize: const Size(70, 100),
    padding: const EdgeInsets.symmetric(horizontal: 5),
    elevation: 5,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(50)),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      width: 100,
      decoration: const BoxDecoration(),
      child: Column(
        // padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                SizedBox(
                  child: Row(
                    children: const [
                      Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                      Image(
                        image: AssetImage('images/space_x.png'),
                        height: 250,
                        width: 85,
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Text(
                        'TESLA',
                        style: TextStyle(color: Colors.red),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Text(
                        'USD 838.29',
                        style: TextStyle(
                          color: Color.fromARGB(255, 119, 119, 119),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Text(
                        '-1.00 (-0.12%)',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                  height: 30,
                ),
                SizedBox(
                  height: 25,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5)),
                      ElevatedButton(
                        style: smallButtons,
                        onPressed: () => print('News'),
                        child: const Text(
                          'NEWS',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5)),
                      ButtonTheme(
                        child: ElevatedButton(
                          style: smallButtons,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => SpaceXForumScreen()));
                          },
                          // onPressed: () => print('Forum'),
                          child: const Text(
                            'FORUM',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5)),
                      ButtonTheme(
                        child: ElevatedButton(
                          style: smallButtons,
                          onPressed: () => print('MULTIMEDIA'),
                          child: const Text(
                            'MULTIMEDIA',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5)),
                      ButtonTheme(
                        child: ElevatedButton(
                          style: smallButtons,
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => ChatPage()));
                          },
                          child: const Text(
                            'CHAT ROOM',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //search and filter field
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  height: 40,
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 1),
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 223, 223, 223),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey, width: 2)),
                          child: const CupertinoSearchTextField(
                              backgroundColor: Colors.white),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 1),
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 223, 223, 223),
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.grey, width: 2)),
                            child: const DropDownDuration()),
                      ),
                      Expanded(
                          flex: 3,
                          child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 223, 223, 223),
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(color: Colors.grey, width: 2)),
                              child: const DropDownRelevance())),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
