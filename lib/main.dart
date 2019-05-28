import 'package:brainnco_dev/pages/Homepage.dart';
import 'package:brainnco_dev/pages/SplashScreen.dart';
import 'package:brainnco_dev/pages/Starspage.dart';
import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Github Starts',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'BalooBhai',
        primaryColor: Colors.black,
        accentColor: Colors.grey[600],
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => new HomePage(),
        '/stars': (BuildContext context) => new Stars(),
        '/splash': (BuildContext context) => new SplashScreen(),
      },
    );
  }
}