import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'package:bookify_try/screens/homescreen.dart';
import 'package:bookify_try/screens/login.dart';
import 'package:bookify_try/screens/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: AnimatedSplashScreen(
        splashIconSize: double.infinity,
        splash: 'assets/splash.png',
        nextScreen: HomeScreen(),
        duration: 200,
        backgroundColor: Color.fromRGBO(255, 191, 0, 1),
        splashTransition: SplashTransition.fadeTransition,
      ),
      routes: {
        LoginScreen().routeName: (context) => LoginScreen(),
        HomeScreen().routeName: (context) => HomeScreen(),
      },
    );
  }
}
