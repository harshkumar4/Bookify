import 'package:bookify_try/widgets/buttons.dart';
import 'package:flutter/material.dart';

import '../sizeconfig.dart';

import '../screens/codscreen.dart';

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
                height: getRelativeHeight(0.25),
                margin: const EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Row(
                  children: [
                    Container(
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
                                color: Theme.of(context).primaryColor,
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
              Text(
                'About : -',
                style: const TextStyle(
                  letterSpacing: 0.8,
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
                  letterSpacing: 1,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              onPressedFunction: () =>
                  Navigator.of(context).pushNamed(CodScreen().routeName)),
        ),
      ),
    );
  }
}
