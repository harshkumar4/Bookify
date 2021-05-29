import 'package:flutter/material.dart';

import '../../widgets/itemslist.dart';
import '../morescreen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 10, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 6),
          Text(
            'Hi Guest!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(
            height: 36,
            child: Text(
              'Let’s buy some new books!',
              style: TextStyle(
                color: Color(0xFFC4C4C4),
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Divider(
            height: 4,
            color: Color(0xFFFFFF00),
            thickness: 4,
            endIndent: 280,
          ),
          SizedBox(
            height: 25,
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
    );
  }
}
