import 'dart:async';

import 'package:flutter_web/material.dart';

//inicializando estado do splash.
class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startSplashScreenTimer() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, navigationToNextPage);
  }

  void navigationToNextPage() {
    Navigator.pushNamedAndRemoveUntil(context, '/stars', ModalRoute.withName('/'));
  }

  @override
  void initState() {
    super.initState();
    startSplashScreenTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          title: Text(
            "githubstars",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              width: 300,
              height: 20,
              child: LinearProgressIndicator(),
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.only(top: 20),
              child: Text("Getting the repositories list from Github..."),
          ),
        ],
      ),
    );
  }
}
