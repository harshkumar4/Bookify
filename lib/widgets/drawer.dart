import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../sizeconfig.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Container(
          color: Color(0xFF171717),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                // padding: const EdgeInsets.only(
                //   top: 35.0,
                //   bottom: 35.0,
                //   left: 10,
                //   right: 10,
                // ),
                height: getRelativeHeight(0.185),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/logo.png',
                        height: 40,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Bookify",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Color(0xFF000000),
                thickness: 2,
              ),
              _listItems(Icons.person, 'View Profile'),
              _listItems(Icons.book, 'About Us'),
              _listItems(Icons.favorite, 'Rate on Play Store'),
              _listItems(Icons.adb, 'Report Bugs'),
              _listItems(Icons.share, 'Invite Friends'),
              SizedBox(height: getRelativeHeight(0.26)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(
                    "Connect with us",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _iconButton(FaIcon(FontAwesomeIcons.linkedin)),
                  _iconButton(FaIcon(FontAwesomeIcons.instagram)),
                  _iconButton(FaIcon(FontAwesomeIcons.twitter)),
                  _iconButton(FaIcon(FontAwesomeIcons.globe)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _iconButton(Widget icon) => Padding(
      padding: const EdgeInsets.all(6),
      child: IconButton(
        iconSize: 25,
        icon: icon,
        color: new Color(0xFFFFFF00),
        onPressed: () {},
      ),
    );

Widget _listItems(IconData icon, String title) => ListTile(
      leading: Icon(
        icon,
        color: Color(0xFFC4C4C4),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w300,
          color: Color(0xFFC4C4C4),
        ),
      ),
      onTap: () {},
    );
