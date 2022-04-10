import 'dart:ui';

import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    String searchString = "";
    return Scaffold(
        body: Column(
      children: [
        Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  bottomLeft: Radius.circular(25))),
          height: 30,
          child: TextField(
            style: TextStyle(height: 40),
            selectionHeightStyle: BoxHeightStyle.tight,
            onChanged: (value) {
              setState(() {
                var searchString = value.toLowerCase();
              });
            },
            decoration: const InputDecoration(
              fillColor: Colors.white,
              labelText: 'Search',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    bottomLeft: Radius.circular(25)),
              ),
              suffixIcon: Icon(Icons.search),
            ),
          ),
        ),
        const SizedBox(height: 0),
        Expanded(
          child: FutureBuilder(
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              return snapshot.data![10].title
                      .toLowerCase()
                      .contains(searchString)
                  ? const ListTile(
                      // List tile widget data
                      )
                  : Container();
            },

            // Our existing list code
          ),
        ),
      ],
    ));
  }
}
