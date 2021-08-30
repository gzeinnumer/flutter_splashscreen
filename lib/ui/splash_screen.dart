import 'package:flutter/material.dart';
import 'package:flutter_splashscreen/main.dart';
import 'package:flutter_splashscreen/widget/splash_ui.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 5000), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => MyHomePage(title: 'Flutter Demo Home Page')));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashUI(),
    );
  }
}


