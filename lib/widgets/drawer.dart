import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Drawer(
      child: Container(
          color: Color(0xFF171717),
          child: Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  top: 40.0, bottom: 40, left: 10, right: 10),
              child: Text(
                "Bookify",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFFFFFFFF)),
              ),
            ),
            Divider(
              color: Color(0xFF000000),
              thickness: 2,
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Color(0xFFC4C4C4),
              ),
              title: Text(
                "View profile",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFFC4C4C4)),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.book, color: Color(0xFFC4C4C4)),
              title: Text(
                "About us",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFFC4C4C4)),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.favorite, color: Color(0xFFC4C4C4)),
              title: Text(
                "Rate on Play Store",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFFC4C4C4)),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.adb, color: Color(0xFFC4C4C4)),
              title: Text(
                "Report Bugs",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFFC4C4C4)),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.share, color: Color(0xFFC4C4C4)),
              title: Text(
                "Invite Friends",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFFC4C4C4)),
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 240,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  "Connect with us",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ],
            ),
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(6),
                  child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.linkedin,
                        size: 30,
                        color: new Color(0xFFFFFF00),
                      ),
                      onPressed: () {}),
                ),
                Padding(
                  padding: const EdgeInsets.all(6),
                  child: IconButton(
                      iconSize: 30,
                      icon: FaIcon(FontAwesomeIcons.instagramSquare),
                      color: new Color(0xFFFFFF00),
                      onPressed: () {}),
                ),
                Padding(
                  padding: const EdgeInsets.all(6),
                  child: IconButton(
                      iconSize: 30,
                      icon: FaIcon(FontAwesomeIcons.twitterSquare),
                      color: new Color(0xFFFFFF00),
                      onPressed: () {}),
                ),
                Padding(
                  padding: const EdgeInsets.all(6),
                  child: IconButton(
                      iconSize: 30,
                      icon: FaIcon(FontAwesomeIcons.language),
                      color: new Color(0xFFFFFF00),
                      onPressed: () {}),
                ),
              ],
            ),
          ])),
    ));
  }
}
