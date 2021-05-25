import 'package:flutter/material.dart';

import '../sizeconfig.dart';

class VertListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getRelativeHeight(0.7),
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) => Container(
            height: getRelativeHeight(0.17),
            padding: EdgeInsets.only(
              left: 8,
              top: 8,
              bottom: 8,
            ),
            margin: EdgeInsets.symmetric(vertical: 6),
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
                  width: getRelativeWidht(0.26),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 6),
                  width: getRelativeWidht(0.57),
                  // color: Colors.yellow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Title of the product ash asih fk askhkjas hkh',
                        softWrap: true,
                        maxLines: 1,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'JK Rollen',
                        softWrap: true,
                        maxLines: 1,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          color: Color.fromRGBO(192, 192, 192, 1),
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Spacer(),
                          Material(
                            color: Colors.yellow,
                            clipBehavior: Clip.antiAlias,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4.0,
                                vertical: 1,
                              ),
                              child: Text('220'),
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
