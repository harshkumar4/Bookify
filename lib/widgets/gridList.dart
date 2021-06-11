import 'package:flutter/material.dart';

import 'package:bookify/screens/usedbooksdetail.dart';

class GridList extends StatelessWidget {
  const GridList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(top: 10),
      shrinkWrap: true,
      primary: false,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
        childAspectRatio: 0.55,
      ),
      itemCount: 10,
      itemBuilder: (ctx, i) => GestureDetector(
        onTap: () =>
            Navigator.of(context).pushNamed(UsedBooksDetails().routeName),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 210,
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
                        child: const Text(
                          'Rs 200',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      color: Color(0xFFFFFF00),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                      ),
                    ),
                    bottom: 0,
                    right: 0,
                  ),
                ],
              ),
              const SizedBox(height: 3),
              const Text(
                'Rich Dad Poor Dad hjvash',
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
