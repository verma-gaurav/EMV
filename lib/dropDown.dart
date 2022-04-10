import 'dart:ui';

import 'package:flutter/material.dart';

class DropDownLst extends StatefulWidget {
  const DropDownLst({Key? key}) : super(key: key);

  @override
  State<DropDownLst> createState() => _DropDownLstState();
}

class _DropDownLstState extends State<DropDownLst> {
  String dropdownValue = 'One';
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
        items: <String>['One', 'Two', 'Free', 'Four']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
