import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

enum SingingCharacter { inappropriate, ldw, irrelevent, otherReason }

class Flag extends StatefulWidget {
  const Flag({Key? key}) : super(key: key);

  @override
  State<Flag> createState() => _FlagState();
}

class _FlagState extends State<Flag> {
  SingingCharacter? _character = SingingCharacter.otherReason;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(10),
        width: 300,
        height: 550,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text(
                "Reason to flag out",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Divider(
                thickness: 2,
                indent: 15,
                endIndent: 15,
                color: Color.fromARGB(255, 133, 133, 133),
              ),
              ListTile(
                title: const Text('Inappropriate/Offensive'),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.inappropriate,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Link doesn\'t work'),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.ldw,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Irrelevant'),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.irrelevent,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Other Reason'),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.otherReason,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
              TextFormField(
                maxLines: 6,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(color: Colors.black),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    hintText: 'Other reason'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: "Flag Submitted",
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
                  child: Text('SUBMIT'))
            ],
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// class Flag extends StatefulWidget {
//   const Flag({Key? key}) : super(key: key);
//   @override
//   State<Flag> createState() => _FlagState();
// }

// enum SingingCharacter { lafayette, jefferson }

// class _FlagState extends State<Flag> {
//   SingingCharacter? _character = SingingCharacter.lafayette;
//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//         elevation: 16,
//         child: Container(
//             padding: EdgeInsets.only(top: 25),
//             width: 300,
//             height: 550,
//             child: Center(
//               child: Column(
//                 children: [
//                   Text(
//                     "Reason to flag out",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                   Divider(
//                     thickness: 2,
//                     indent: 15,
//                     endIndent: 15,
//                     color: Color.fromARGB(255, 133, 133, 133),
//                   ),
//                   ListTile(
//                     title: const Text('Inappropriate/Offensive'),
//                     leading: Radio<SingingCharacter>(
//                       value: SingingCharacter.lafayette,
//                       groupValue: _character,
//                       onChanged: (SingingCharacter? value) {
//                         setState(() {
//                           _character = value;
//                         });
//                       },
//                     ),
//                   ),
//                   ListTile(
//                     title: const Text('Link doesn\'t work'),
//                     leading: Radio<SingingCharacter>(
//                       value: SingingCharacter.lafayette,
//                       groupValue: _character,
//                       onChanged: (SingingCharacter? value) {
//                         setState(() {
//                           _character = value;
//                         });
//                       },
//                     ),
//                   ),
//                   ListTile(
//                     title: const Text('Irrelevant'),
//                     leading: Radio<SingingCharacter>(
//                       value: SingingCharacter.lafayette,
//                       groupValue: _character,
//                       onChanged: (SingingCharacter? value) {
//                         setState(() {
//                           _character = value;
//                         });
//                       },
//                     ),
//                   ),
//                   ListTile(
//                     title: const Text('Others'),
//                     leading: Radio<SingingCharacter>(
//                       value: SingingCharacter.lafayette,
//                       groupValue: _character,
//                       onChanged: (SingingCharacter? value) {
//                         setState(() {
//                           _character = value;
//                         });
//                       },
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//                     child: TextFormField(
//                       maxLines: 6,
//                       decoration: InputDecoration(
//                           filled: true,
//                           fillColor: Colors.white,
//                           border: OutlineInputBorder(),
//                           labelStyle: TextStyle(color: Colors.black),
//                           focusedBorder: OutlineInputBorder(
//                               borderSide: BorderSide(color: Colors.black)),
//                           hintText: 'Other reason'),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.symmetric(
//                       horizontal: 15,
//                     ),
//                   ),
//                   ElevatedButton(
//                       onPressed: () {
//                         Fluttertoast.showToast(
//                             msg: "Flag Submitted",
//                             toastLength: Toast.LENGTH_SHORT, //duration
//                             gravity: ToastGravity.BOTTOM, //location
//                             timeInSecForIosWeb: 2,
//                             backgroundColor: Color.fromARGB(
//                                 255, 215, 215, 215), //background color
//                             textColor: Colors.black, //text Color
//                             fontSize: 16.0 //font size
//                             );
//                         Navigator.of(context).pop();
//                       },
//                       child: Text('SUBMIT'))
//                 ],
//               ),
//             )));
//   }
// }
