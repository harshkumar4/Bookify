import 'package:flutter/material.dart';

class ItemsListWid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: ListView.builder(
        clipBehavior: Clip.none,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          height: 150,
          width: 120,
          margin: EdgeInsets.only(
            // bottom: 10,
            right: 20,
          ),
          child: Column(
            // mainAxisSize: MainAxisSize.min,
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
                        width: 1,
                      ),
                    ),
                    height: 150,
                    width: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.asset(
                        'assets/rdpd.JPG',
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
                  )
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
        ),
      ),
    );
  }
}
