import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return Padding(
      // color: Colors.white,
      // height: 150,
      padding: EdgeInsets.only(top: 8),
      child: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Image.asset(
              'assets/logo.png',
              height: 32,
              width: 32,
            ),
          ),
        ],
      ),
    );
  }
}
