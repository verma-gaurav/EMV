import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';

class DropDownDuration extends StatefulWidget {
  const DropDownDuration({Key? key}) : super(key: key);

  @override
  State<DropDownDuration> createState() => _DropDownDurationState();
}

class _DropDownDurationState extends State<DropDownDuration> {
  String dropdownValue = 'Duration';
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(
          Icons.arrow_drop_down_outlined,
          color: Color.fromARGB(255, 175, 175, 175),
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
          'Duration',
          'LastWeek',
          '30 days',
          '24 hours',
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
