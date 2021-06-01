import 'package:bookify_try/widgets/buttons.dart';
import 'package:flutter/material.dart';

import '../sizeconfig.dart';

class DetailScreen extends StatelessWidget {
  final routeName = '/detail-screen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
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
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // color: Colors.yellow,
                height: getRelativeHeight(0.25),
                padding: const EdgeInsets.only(
                  // left: 20,
                  // right: 20,
                  top: 10,
                  // bottom: 8,
                ),
                // margin: EdgeInsets.symmetric(
                //   // vertical: 8,
                //   horizontal: 20,
                // ),
                child: Row(
                  children: [
                    Container(
                      // color: Colors.red,
                      // padding: EdgeInsets.all(1),
                      // decoration: BoxDecoration(
                      //   // borderRadius: BorderRadius.circular(8),
                      //   // color: Colors.red,
                      //   // border: Border.all(
                      //   //   color: Colors.white,
                      //   //   width: 1,
                      //   // ),
                      // ),
                      width: getRelativeWidht(0.3),
                      height: double.maxFinite,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.asset(
                          'assets/rdpd.JPG',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 14),
                      width: getRelativeWidht(0.55),
                      // color: Colors.yellow,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Rich Dad Poor Dad',
                            softWrap: true,
                            maxLines: 2,
                            overflow: TextOverflow.clip,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'Robert Kiyosaki',
                            softWrap: true,
                            maxLines: 1,
                            overflow: TextOverflow.clip,
                            style: const TextStyle(
                              fontSize: 16,
                              color: const Color.fromRGBO(192, 192, 192, 1),
                            ),
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Material(
                                color: const Color(0xFFFFFF00),
                                clipBehavior: Clip.antiAlias,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 4.0,
                                    vertical: 1,
                                  ),
                                  child: Text(
                                    'Rs. 220',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
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
              SizedBox(height: 18),
              Text(
                'About : -',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Rich Dad Poor Dad is a 1997 book written by Robert Kiyosaki and Sharon Lechter. It advocates the importance of financial literacy, financial independence and building wealth through investing in assets, real estate investing, starting and owning businesses, as well as increasing one\'s financial intelligence.',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              // CustomElevatedButton(
              //   onPressedFunction: () {},
              //   child: Text(
              //     'Buy Now',
              //     style: TextStyle(
              //       fontSize: 18,
              //       fontWeight: FontWeight.w700,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: CustomElevatedButton(
            child: Text(
              'Buy Now',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            onPressedFunction: () {},
          ),
        ),
      ),
    );
  }
}
