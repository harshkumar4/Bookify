import 'package:flutter/material.dart';

import '../../widgets/gridList.dart';

class BuyUsedScreen extends StatelessWidget {
  const BuyUsedScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 6),
          const Text(
            'Used Books',
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 14),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            clipBehavior: Clip.antiAlias,
            child: Container(
              height: 50,
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: const Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Search any book...",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GridList(),
        ],
      ),
    );
  }
}
