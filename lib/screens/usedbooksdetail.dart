import 'package:bookify_try/sizeconfig.dart';
import 'package:flutter/material.dart';

class UsedBooksDetails extends StatelessWidget {
  final routeName = 'usedbooks-detail';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              automaticallyImplyLeading: true,
              pinned: true,
              expandedHeight: 220,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/rdpd.JPG',
                ),
              ),
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back_sharp,
                  size: 30,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              actions: [
                IconButton(
                  color: Theme.of(context).accentColor,
                  icon: Icon(
                    Icons.bookmark_add_outlined,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  const SizedBox(height: 14),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Rich Dad Poor Dad',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Robert T. Kiyosaki',
                          style: TextStyle(
                            color: Color(0xFFC4C4C4),
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Material(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.0, horizontal: 4),
                            child: Text(
                              'Rs 200',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          color: Color(0xFFFFFF00),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ],
                    ),
                  ),
                  Container(height: 800),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
