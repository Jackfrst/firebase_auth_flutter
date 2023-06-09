import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_flutter/screens/singin_screen.dart';

import 'package:flutter/material.dart';
import '../utils/color_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              hexStringToColor("F12711"),
              hexStringToColor("F5AF19")
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Center(
          child: ElevatedButton(
            child: Text("Logout"),
            onPressed: () {
              FirebaseAuth.instance.signOut().then((value) {
                print("Signed Out");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInScreen() ));
              });
            },
          ),
        ),
      ),
    );
  }
}