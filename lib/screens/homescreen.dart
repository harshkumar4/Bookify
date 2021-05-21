import 'package:flutter/material.dart';

import '../widgets/navbar.dart';
import '../widgets/itemslist.dart';

class HomeScreen extends StatefulWidget {
  final routeName = '/homescreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Image.asset(
                'assets/logo.png',
                height: 32,
                width: 32,
              ),
            )
          ],
        ),
        bottomNavigationBar: NavBar(),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 4),
              Text(
                'Hi Guest!',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 30),
              ),
              SizedBox(
                height: 36,
                child: Text(
                  'Let’s buy some new books!',
                  style: TextStyle(
                      color: Color.fromRGBO(192, 192, 192, 1),
                      fontWeight: FontWeight.w700),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Self Help',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'More > ',
                        style: TextStyle(color: Colors.yellow),
                      )),
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
                      style: TextStyle(color: Colors.yellow),
                    ),
                  ),
                ],
              ),
              ItemsListWid(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Space and Technology',
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
                      style: TextStyle(color: Colors.yellow),
                    ),
                  ),
                ],
              ),
              ItemsListWid(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trading',
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
                      style: TextStyle(color: Colors.yellow),
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
