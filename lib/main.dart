import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'package:bookify_try/screens/homescreen.dart';
import 'package:bookify_try/screens/login.dart';
import 'package:bookify_try/screens/signup.dart';
import 'package:google_fonts/google_fonts.dart';

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
      home: AnimatedSplashScreen(
        splashIconSize: double.infinity,
        splash: 'assets/splashscreenicon.png',
        nextScreen: SignUpScreen(),
        duration: 500,
        backgroundColor: Colors.black,
        splashTransition: SplashTransition.fadeTransition,
      ),
      routes: {
        LoginScreen().routeName: (context) => LoginScreen(),
        HomeScreen().routeName: (context) => HomeScreen(),
      },
    );
  }
}
