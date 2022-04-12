import 'dart:ui';

import 'package:flutter/material.dart';

class DropDownRelevance extends StatefulWidget {
  const DropDownRelevance({Key? key}) : super(key: key);

  @override
  State<DropDownRelevance> createState() => _DropDownRelevanceState();
}

class _DropDownRelevanceState extends State<DropDownRelevance> {
  String dropdownValue = 'Relevance';
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(
          Icons.arrow_drop_down_outlined,
          color: Color.fromARGB(255, 3, 3, 3),
        ),
        elevation: 16,
        underline: Container(
          height: 2,
          color: Color.fromARGB(255, 175, 175, 175),
        ),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: <String>[
          'Relevance',
          'Most Liked',
          'Most Discussed',
          'Most Viewed'
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
