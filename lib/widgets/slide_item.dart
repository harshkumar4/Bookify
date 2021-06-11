import 'package:bookify/models/slide.dart';
import 'package:flutter/material.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(slideList[index].imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          slideList[index].title,
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          slideList[index].description,
          style: TextStyle(
            fontSize: 15,
            color: Color(0xFFC4C4C4),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
