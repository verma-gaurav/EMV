import 'package:flutter/material.dart';

class SimpleDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Success"),
      titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
      actionsOverflowButtonSpacing: 20,
      actions: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
            ),
            onPressed: () {},
            child: Text(
              "Tesla Motors",
              style: TextStyle(color: Colors.white),
            )),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
            ),
            onPressed: () {},
            child: Text("Tesla Energy", style: TextStyle(color: Colors.white))),
      ],
      content: Text("Saved successfully"),
    );
  }
}
