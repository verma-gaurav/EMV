import 'package:flutter/material.dart';

class EmptyComtainer extends StatefulWidget {
  const EmptyComtainer({Key? key}) : super(key: key);

  @override
  State<EmptyComtainer> createState() => _EmptyComtainerState();
}

class _EmptyComtainerState extends State<EmptyComtainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Container(
                height: 200,
                width: 300,
                color: Colors.grey,
                child: Center(child: Text('hello'))),
            Container(
                height: 200,
                width: 300,
                color: Colors.grey,
                child: Center(child: Text('hello'))),
          ],
        ),
      ),
    );
  }
}
