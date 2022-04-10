import 'package:emv_home/post_model.dart';
import 'package:emv_home/screens/logIn.dart';
import 'package:emv_home/screens/signUp.dart';
import 'package:flutter/material.dart';
import '../screens/signUp.dart';
// import '../screens/posts.dart';
// import '../screens/chatRoom/chatScreens/homePage.dart';

class LeftSideDrawer extends StatelessWidget {
  const LeftSideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle StyBtnRed = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      primary: Colors.red,
      onPrimary: Colors.white,
    );
    final ButtonStyle StyBtnBlue = ElevatedButton.styleFrom(
      primary: Colors.blue,
      onPrimary: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
    );
    return Drawer(
      child: Column(
        children: <Widget>[
          const Padding(padding: EdgeInsets.only(top: 20)),
          Column(
            children: [
              const SizedBox(
                height: 100,
                child: Center(
                  child: Image(
                    image: AssetImage('images/mainlogo.png'),
                    height: 150,
                    width: 150,
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.all(0)),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                color: Colors.white,
                child: Row(
                  children: [
                    // Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                    Expanded(
                        flex: 1,
                        child: ElevatedButton(
                            style: StyBtnBlue,
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) => logIn()));
                            },
                            child: const Text('LogIn'))),
                    const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                          style: StyBtnRed,
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => SignUp()));
                          },
                          child: const Text(
                            'SignUp',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
          ListTile(
            leading: const Icon(Icons.arrow_forward_outlined),
            iconColor: Colors.red,
            title: const Text('HOME'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          const DividingLine(),
          ListTile(
            leading: const Icon(Icons.arrow_forward_outlined),
            iconColor: Colors.red,
            title: const Text('ABOUT EMV'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          const DividingLine(),
          ListTile(
            leading: const Icon(Icons.arrow_forward_outlined),
            iconColor: Colors.red,
            title: const Text('SHOP NOW'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          const DividingLine(),
          ListTile(
            leading: const Icon(Icons.arrow_forward_outlined),
            iconColor: Colors.red,
            title: const Text('BROWS USED TESLA'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          const DividingLine(),
          ListTile(
            leading: const Icon(Icons.arrow_forward_outlined),
            iconColor: Colors.red,
            title: const Text('TESLA CAR LOANS'),
            onTap: () => {},
          ),
          const DividingLine(),
          ListTile(
            leading: const Icon(Icons.arrow_forward_outlined),
            iconColor: Colors.red,
            title: const Text('TESLA CAR INSURANCE'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          const DividingLine(),
          ListTile(
            leading: const Icon(Icons.arrow_forward_outlined),
            iconColor: Colors.red,
            title: const Text('CONTACT US'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          const DividingLine(),
        ],
      ),
    );
  }
}

class DividingLine extends StatelessWidget {
  const DividingLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 2,
      thickness: 2,
      indent: 25,
      endIndent: 25,
      color: Colors.grey,
    );
  }
}

const Divider divider = Divider(
  height: 2,
  thickness: 2,
  indent: 25,
  endIndent: 25,
  color: Colors.grey,
);
