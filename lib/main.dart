import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_splashscreen/ui/home_screen.dart';
import 'package:flutter_splashscreen/ui/splash_screen.dart';

import 'widget/splash_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: SplashScreen(),
      home: AnimatedSplashScreen(
        splash: SplashUI(),
        duration: 3000,
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.blue,
        nextScreen: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
