import 'package:flutter/material.dart';

class ItemsListWid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      child: ListView.builder(
        clipBehavior: Clip.none,
        itemCount: 20,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          height: 100,
          width: 100,
          margin: EdgeInsets.only(
            // bottom: 10,
            right: 10,
            left: 10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Container(
                    height: 120,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Material(
                      color: Colors.yellowAccent,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(4),
                        topLeft: Radius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text('200'),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 6),
              Text(
                'Title of the product zdgdvsh',
                maxLines: 2,
                softWrap: true,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
