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
        padding: EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 6),
            Text(
              'Profile',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 35),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4, top: 20, bottom: 25),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(1),
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
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Swati',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'swatinpp32@gmail.com',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFC4C4C4),
                          fontSize: 18,
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
                SizedBox(
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
                        color:
                            tab == 'posted' ? Colors.white : Color(0xFFFFFF00),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ],
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 190,
                    child: Divider(
                      color: tab == 'posted' ? Color(0xFFFFFF00) : Colors.white,
                      thickness: tab == 'posted' ? 4 : 2,
                    )),
                Container(
                    width: 190,
                    child: Divider(
                      color: tab == 'posted' ? Colors.white : Color(0xFFFFFF00),
                      thickness: tab == 'posted' ? 2 : 4,
                    )),
              ],
            ),
            tab == 'posted'
                ? Padding(
                    padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Erat nam at lectus urna duis convallis. Dignissim cras tincidunt lobortis feugiat vivamus at augue. Aliquam malesuada bibendum arcu vitae elementum curabitur. Scelerisque varius morbi enim nunc faucibus. Dui id ornare arcu odio ut sem nulla. Tempor commodo ullamcorper a lacus vestibulum sed arcu. Adipiscing diam donec adipiscing tristique risus nec feugiat. Massa sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ultrices gravida dictum fusce ut placerat orci nulla. Purus non enim praesent elementum facilisis leo. Mi bibendum neque egestas congue quisque egestas. Pulvinar mattis nunc sed blandit. Sed vulputate odio ut enim blandit volutpat.',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  )
                : Table(),
          ],
        ));
  }
}
