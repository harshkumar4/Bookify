import 'package:flutter/material.dart';

import '../widgets/navbar.dart';
import '../widgets/itemslist.dart';
import '../widgets/appbar.dart';
import '../widgets/drawer.dart';

import './morescreen.dart';

class HomeScreen extends StatefulWidget {
  final routeName = '/homescreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

var scaffoldKey = GlobalKey<ScaffoldState>();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: MainDrawer(),
        appBar: MyAppbar(),
        bottomNavigationBar: NavBar(),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 6),
              Text(
                'Hi Guest!',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 35),
              ),
              SizedBox(
                height: 36,
                child: Text(
                  'Let’s buy some new books!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ),
              Divider(
                height: 4,
                color: Color(0xFFFFFF00),
                thickness: 5,
                endIndent: 280,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Psychology',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(MoreScreen().routeName,
                            arguments: 'Psychology');
                      },
                      child: Text(
                        'More > ',
                        style: TextStyle(color: Color(0xFFFFFF00)),
                      )),
                ],
              ),
              ItemsListWid(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Action and Adventure',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'More > ',
                      style: TextStyle(
                        color: Color(0xFFFFFF00),
                      ),
                    ),
                  ),
                ],
              ),
              ItemsListWid(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Finance',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'More > ',
                      style: TextStyle(
                        color: Color(0xFFFFFF00),
                      ),
                    ),
                  ),
                ],
              ),
              ItemsListWid(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sci-Fi',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'More > ',
                      style: TextStyle(
                        color: Color(0xFFFFFF00),
                      ),
                    ),
                  ),
                ],
              ),
              ItemsListWid(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Biographies',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'More > ',
                      style: TextStyle(
                        color: Color(0xFFFFFF00),
                      ),
                    ),
                  ),
                ],
              ),
              ItemsListWid(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Startups',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'More > ',
                      style: TextStyle(
                        color: Color(0xFFFFFF00),
                      ),
                    ),
                  ),
                ],
              ),
              ItemsListWid(),
            ],
          ),
        ),
      ),
    );
  }
}
