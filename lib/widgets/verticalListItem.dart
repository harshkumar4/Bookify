import 'package:bookify/screens/detailscreen.dart';
import 'package:flutter/material.dart';

import '../sizeconfig.dart';

class VertListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () => Navigator.of(context).pushNamed(
          DetailScreen().routeName,
        ),
        child: Container(
          height: getRelativeHeight(0.16),
          padding: const EdgeInsets.only(
            left: 8,
            top: 6,
            bottom: 6,
          ),
          margin: const EdgeInsets.symmetric(vertical: 6),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  // color: Colors.red,
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
                width: getRelativeWidht(0.20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.asset(
                    'assets/rdpd.JPG',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                width: getRelativeWidht(0.60),
                // color: Colors.yellow,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Title of the product ash asih fkk',
                      softWrap: true,
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const Text(
                      'Robert Kiyosaki',
                      softWrap: true,
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        color: Color.fromRGBO(192, 192, 192, 1),
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Material(
                          color: Color(0xFFFFFF00),
                          clipBehavior: Clip.antiAlias,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 4.0,
                              vertical: 1,
                            ),
                            child: const Text('Rs. 220'),
                          ),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
