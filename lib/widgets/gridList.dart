import 'package:flutter/material.dart';

import '../sizeconfig.dart';

class GridList extends StatelessWidget {
  const GridList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 10),
        height: getRelativeHeight(0.80),
        width: 180,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, i) {
            return Container(
              color: Colors.white,
              margin: EdgeInsets.all(10),
              height: 220,
              width: 100,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          // color: Colors.red,
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                        // height: 10,
                        // width: 10,

                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.asset(
                            'assets/rdpd.JPG',
                            height: 100,
                            width: 100,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Material(
                          color: Color(0xFFFFFF00),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(4),
                            topLeft: Radius.circular(4),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.0, horizontal: 4),
                            child: Text(
                              'Rs. 200',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Title of the product',
                    maxLines: 2,
                    softWrap: true,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
