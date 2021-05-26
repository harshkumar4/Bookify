import 'package:bookify_try/screens/addimage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import './sizeconfig.dart';

import './screens/morescreen.dart';
import './screens/screencontroller.dart';
import './screens/signup.dart';
import './screens/login.dart';

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
      },
    );
  }
}
