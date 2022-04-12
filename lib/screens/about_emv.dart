import 'package:flutter/material.dart';

import '../drawer/leftSideDrawer.dart';
import '../drawer/rightSideDrawer.dart';
import 'homeScreen.dart';

class AboutEMV extends StatelessWidget {
  const AboutEMV({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: FittedBox(
                child: Image(
                  image: AssetImage('images/about1.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
                child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.info_outlined,
                  size: 20,
                  color: Color.fromARGB(255, 40, 15, 121),
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                Text('WHO WE ARE'),
              ],
            )),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Text("More Than 25+ Years We Provide True News",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Text(
                    "Nec nascetur mus vicolor rhoncus augue quisque parturient etiam imperdet sit nisi tellus veni faucibus orcimperdiet venena nullam rhoncus curabitur monteante\n\Nec nascetur mus vicolor rhoncus augue quisque parturient etiam imperdet sit nisi tellus veni faucibus orcimperdiet venena nullam rhoncus curabitur monteante.",
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
