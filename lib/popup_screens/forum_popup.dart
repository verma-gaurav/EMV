import 'package:flutter/material.dart';

class ForumPopUp extends StatelessWidget {
  const ForumPopUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        elevation: 16,
        child: Container(
            padding: EdgeInsets.only(top: 40),
            height: 200,
            width: 300,
            child: Center(
              child: Column(
                children: [
                  Text(
                    "Choose One",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 5)),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                      ),
                      onPressed: () {},
                      child: Text("Tesla Energy",
                          style: TextStyle(color: Colors.white))),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Tesla Motors",
                          style: TextStyle(color: Colors.white))),
                ],
              ),
            )));
  }
}
