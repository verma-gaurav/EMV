import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Comment extends StatefulWidget {
  const Comment({Key? key}) : super(key: key);

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 16,
        child: Container(
            padding: EdgeInsets.only(top: 25),
            width: 300,
            height: 350,
            child: Center(
              child: Column(
                children: [
                  Text(
                    "Add your Comment",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    thickness: 2,
                    indent: 15,
                    endIndent: 15,
                    color: Color.fromARGB(255, 133, 133, 133),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: TextFormField(
                      maxLines: 6,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(color: Colors.black),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          hintText: 'Write your Comment'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Fluttertoast.showToast(
                            msg: "Comment Submitted",
                            toastLength: Toast.LENGTH_SHORT, //duration
                            gravity: ToastGravity.BOTTOM, //location
                            timeInSecForIosWeb: 2,
                            backgroundColor: Color.fromARGB(
                                255, 215, 215, 215), //background color
                            textColor: Colors.black, //text Color
                            fontSize: 16.0 //font size
                            );
                        Navigator.of(context).pop();
                      },
                      child: Text('SUBMIT'))
                ],
              ),
            )));
  }
}
