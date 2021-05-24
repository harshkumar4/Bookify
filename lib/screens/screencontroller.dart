import 'package:bookify_try/screens/buyusedscreen.dart';
import 'package:bookify_try/screens/profilescreen.dart';
import 'package:flutter/material.dart';
import 'package:bookify_try/screens/chatscreen.dart';
import 'package:bookify_try/screens/sellscreen.dart';
import '../screens/homescreen.dart';

import '../widgets/navbar.dart';
import '../widgets/appbar.dart';
import '../widgets/drawer.dart';

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
    ChatScreen(),
    ProfileScreen(),
  ];
  int _currentindex = 0;

  void _switchScreens(int index) {
    setState(() {
      _currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(_currentindex);
    return SafeArea(
      child: Scaffold(
        drawer: MainDrawer(),
        appBar: MyAppbar(),
        bottomNavigationBar: NavBar(_switchScreens),
        body: screens[_currentindex],
      ),
    );
  }
}
