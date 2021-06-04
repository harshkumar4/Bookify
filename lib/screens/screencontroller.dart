import 'package:flutter/material.dart';

import 'Home/buyscreen.dart';
import 'Home/profilescreen.dart';
import 'Home/chathomescreen.dart';
import 'Home/sellscreen.dart';
import 'Home/homescreen.dart';

import '../widgets/scaffold/navbar.dart';
import '../widgets/scaffold/appbar.dart';
import '../widgets/scaffold/drawer.dart';

class ScreenController extends StatefulWidget {
  final routeName = '/homescreen';
  @override
  _ScreenControllerState createState() => _ScreenControllerState();
}

var scaffoldKey = GlobalKey<ScaffoldState>();

class _ScreenControllerState extends State<ScreenController> {
  final List<Widget> screens = [
    HomeScreen(),
    BuyUsedScreen(),
    SellScreen(),
    ChatHomeScreen(),
    ProfileScreen(),
  ];
  int _screenindex = 0;

  void _switchScreens(int index) {
    setState(() {
      _screenindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppbar(),
        drawer: MainDrawer(),
        bottomNavigationBar: NavBar(_switchScreens),
        body: screens[_screenindex],
      ),
    );
  }
}
