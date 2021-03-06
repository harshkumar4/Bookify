import 'package:bookify/sizeconfig.dart';
import 'package:bookify/widgets/gridList.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String tab = 'posted';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 6),
          const Text(
            'Profile',
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.w900,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4, top: 20, bottom: 25),
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.red,
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        ),
                      ),
                      height: 100,
                      width: 100,
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
                        child: IconButton(
                          iconSize: 15,
                          icon: const Icon(Icons.edit),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Swati',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text(
                      'swatinpp32@gmail.com',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFC4C4C4),
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    tab = 'posted';
                  });
                },
                child: Text(
                  'Posted',
                  style: TextStyle(
                      color:
                          tab == 'posted' ? Color(0xFFFFFFF00) : Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              const SizedBox(
                width: 100,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    tab = 'fea';
                  });
                },
                child: Text(
                  'Favourites',
                  style: TextStyle(
                      color: tab == 'posted' ? Colors.white : Color(0xFFFFFF00),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                  width: getRelativeWidht(0.46),
                  child: Divider(
                    color: tab == 'posted' ? Color(0xFFFFFF00) : Colors.white,
                    thickness: tab == 'posted' ? 4 : 2,
                  )),
              Container(
                  width: getRelativeWidht(0.46),
                  child: Divider(
                    color: tab == 'posted' ? Colors.white : Color(0xFFFFFF00),
                    thickness: tab == 'posted' ? 2 : 4,
                  )),
            ],
          ),
          tab == 'posted' ? GridList() : Table(),
        ],
      ),
    );
  }
}
