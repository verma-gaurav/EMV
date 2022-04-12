import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black),
      title: FlatButton(
        onPressed: () => print('for Home screen'),
        child: const Image(
          image: AssetImage('images/mainlogo.png'),
          height: 100,
          width: 100,
        ),
      ),
      titleTextStyle: const TextStyle(color: Colors.black, fontSize: 25),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 255, 254, 254),
    );
  }
}

