import 'package:flutter/material.dart';

import '../screens/buyusedscreen.dart';
import '../screens/profilescreen.dart';
import '../screens/chatscreen.dart';
import '../screens/sellscreen.dart';
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
