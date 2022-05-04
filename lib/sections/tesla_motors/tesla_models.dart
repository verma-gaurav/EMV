import 'package:flutter/material.dart';

class TeslaModels extends StatelessWidget {
  TeslaModels({Key? key}) : super(key: key);
  final ButtonStyle smallButtons = ElevatedButton.styleFrom(
    onPrimary: const Color.fromARGB(255, 185, 185, 185),
    primary: const Color.fromARGB(255, 27, 103, 168),
    minimumSize: const Size(25, 25),
    padding: const EdgeInsets.symmetric(horizontal: 5),
    elevation: 5,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(50)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.symmetric(horizontal: 5),
      width: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 9.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 2.0), // shadow direction: bottom right
          )
        ],
      ),
      child: FittedBox(
        fit: BoxFit.fill,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonTheme(
              child: ElevatedButton(
                style: smallButtons,
                onPressed: () {},
                // onPressed: () => print('Forum'),
                child: const Text(
                  'Model S',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 9.5,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ButtonTheme(
              child: ElevatedButton(
                style: smallButtons,
                onPressed: () {},
                // onPressed: () => print('Forum'),
                child: const Text(
                  'Model E',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 9.5,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ButtonTheme(
              child: ElevatedButton(
                style: smallButtons,
                onPressed: () {},
                // onPressed: () => print('Forum'),
                child: const Text(
                  'Model X',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 9.5,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ButtonTheme(
              child: ElevatedButton(
                style: smallButtons,
                onPressed: () {},
                // onPressed: () => print('Forum'),
                child: const Text(
                  'Model Y',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 9.5,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ButtonTheme(
              child: ElevatedButton(
                style: smallButtons,
                onPressed: () {},
                // onPressed: () => print('Forum'),
                child: const Text(
                  'Roadester',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 9.5,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ButtonTheme(
              child: ElevatedButton(
                style: smallButtons,
                onPressed: () {},
                // onPressed: () => print('Forum'),
                child: const Text(
                  'Semi',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 9.5,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ButtonTheme(
              child: ElevatedButton(
                style: smallButtons,
                onPressed: () {},
                // onPressed: () => print('Forum'),
                child: const Text(
                  'CyberTruck',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 9.5,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ButtonTheme(
              child: ElevatedButton(
                style: smallButtons,
                onPressed: () {},
                // onPressed: () => print('Forum'),
                child: const Text(
                  'Test your Knowladge',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 9.5,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
