import 'package:flutter/material.dart';

import '../sizeconfig.dart';

class GridList extends StatelessWidget {
  const GridList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getRelativeHeight(0.64),
      padding: EdgeInsets.only(top: 8),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 12,
          childAspectRatio: 0.8,
        ),
        itemCount: 10,
        itemBuilder: (ctx, i) => Stack(
          children: [
            Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    child: Image.asset(
                      'assets/rdpd.JPG',
                      height: 120,
                      width: double.infinity,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Rich Dad Poor Dad',
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              child: Material(
                child: Padding(
                  padding: const EdgeInsets.only(left: 2.0),
                  child: Text(
                    'Rs 200',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                color: Colors.yellow,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(2),
                ),
              ),
              bottom: 2,
              right: 2,
            ),
          ],
        ),
      ),
    );
  }
}
