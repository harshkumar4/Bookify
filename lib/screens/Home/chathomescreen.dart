import 'package:flutter/material.dart';

import 'package:bookify/widgets/chats.dart';

class ChatHomeScreen extends StatelessWidget {
  const ChatHomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Chats',
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.w900,
            ),
          ),
          Chats(),
        ],
      ),
    );
  }
}
