import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';

class StarRating extends StatefulWidget {
  const StarRating({Key? key}) : super(key: key);

  @override
  State<StarRating> createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  @override
  Widget build(BuildContext context) {
    double? _ratingValue;
    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 16,
        child: Container(
          width: 300,
          height: 250,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text('Rate this news',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Divider(
                thickness: 2,
                indent: 15,
                endIndent: 15,
                color: Color.fromARGB(255, 23, 15, 52),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 15)),
              FittedBox(
                fit: BoxFit.fill,
                child: Row(
                  children: [
                    RatingBar(
                        initialRating: 0,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        ratingWidget: RatingWidget(
                            full: const Icon(Icons.star,
                                size: 2, color: Colors.yellow),
                            half: const Icon(
                              Icons.star_half,
                              size: 5,
                              color: Colors.yellow,
                            ),
                            empty: const Icon(
                              Icons.star_outline,
                              size: 2,
                              color: Colors.yellow,
                            )),
                        onRatingUpdate: (value) {
                          setState(() {
                            _ratingValue = value;
                          });
                        }),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 15)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 50, 48, 88)),
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: "Rating Submitted",
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
                  child: Text(
                    'RATE NOW',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ));
  }
}
