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
          childAspectRatio: 0.75,
        ),
        itemCount: 10,
        itemBuilder: (ctx, i) => Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    child: ClipRRect(
                      child: Image.asset(
                        'assets/rdpd.JPG',
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  Positioned(
                    child: Material(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 2.0, horizontal: 4),
                        child: Text(
                          'Rs 200',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      color: Color(0xFFFFFF00),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(2),
                      ),
                    ),
                    bottom: 2,
                    right: 2,
                  ),
                ],
              ),
              SizedBox(height: 3),
              Text(
                'Rich Dad Poor Dad asfnaf salskfjlkas lkj jl',
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
      ),
    );
  }
}
