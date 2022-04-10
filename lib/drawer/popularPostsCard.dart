import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularPostsCards extends StatelessWidget {
  const PopularPostsCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 233, 233, 233),
        fixedSize: const Size(100, 250),
      ),
      onPressed: () {
        print('popular posts');
      },
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 10)),
          Image(
            image: AssetImage('./images/em.jpg'),
            height: 100,
            width: 100,
          ),
          Divider(
            thickness: 2,
          ),
          Container(
            child: Text(
              'Flutter is Google’s mobile UI framework for crafting high-quality native  ',
              style: GoogleFonts.lato(
                  textStyle: TextStyle(color: Colors.black, fontSize: 15)),
            ),
          )
        ],
      ),
    );
  }
}
