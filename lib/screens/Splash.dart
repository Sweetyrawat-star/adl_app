
import 'package:adl_app/mybutton.dart';
import 'package:adl_app/screens/Login.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () =>
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => LoginPage()))

            );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Image.asset(
            "assets/images/logoorg.png",
          ),
        ),
      ),
    );
  }
}
