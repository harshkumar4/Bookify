import 'package:bookify_try/models/more.dart';
import 'package:bookify_try/widgets/drawer.dart';
import 'package:flutter/material.dart';

import '../widgets/navbar.dart';
import '../widgets/itemslist.dart';

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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0), // here the desired height
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.black,
            title: Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Builder(
                builder: (context) => IconButton(
                  icon: Image.asset(
                    "assets/drawericon.png",
                    height: 35,
                    width: 50,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Image.asset(
                  'assets/logo.png',
                  height: 30,
                  width: 30,
                ),
              )
            ],
          ),
        ),
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => More()));
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
