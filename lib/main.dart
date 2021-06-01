import 'package:bookify_try/screens/addimage.dart';
import 'package:bookify_try/screens/codscreen.dart';
import 'package:bookify_try/screens/detailscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import './sizeconfig.dart';

import './screens/morescreen.dart';
import './screens/screencontroller.dart';
import 'screens/Auth/signup.dart';
import 'screens/Auth/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bookify',
      theme: ThemeData(
        primaryColor: Colors.yellow,
        accentColor: Colors.white,
        backgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
        ),
        scaffoldBackgroundColor: Colors.black,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: Builder(
        builder: (BuildContext context) {
          ScreenSize.intialize(context);
          return AnimatedSplashScreen(
            splashIconSize: double.infinity,
            splash: 'assets/splashscreenicon.png',
            nextScreen: ScreenController(),
            duration: 100,
            backgroundColor: Colors.black,
            splashTransition: SplashTransition.fadeTransition,
          );
        },
      ),
      routes: {
        LoginScreen().routeName: (context) => LoginScreen(),
        MoreScreen().routeName: (context) => MoreScreen(),
        DetailScreen().routeName: (context) => DetailScreen(),
        CodScreen().routeName: (context) => CodScreen(),
      },
    );
  }
}
