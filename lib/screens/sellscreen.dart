import 'package:flutter/material.dart';

class SellScreen extends StatelessWidget {
  const SellScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 6),
          Text(
            'Sell Books',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w900, fontSize: 35),
          ),
        ],
      ),
    );
  }
}
