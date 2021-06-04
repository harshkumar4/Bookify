import 'package:bookify_try/sizeconfig.dart';
import 'package:bookify_try/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class UsedBooksDetails extends StatefulWidget {
  final routeName = 'usedbooks-detail';
  @override
  _UsedBooksDetailsState createState() => _UsedBooksDetailsState();
}

class _UsedBooksDetailsState extends State<UsedBooksDetails> {
  bool _isFav = false;
  bool _isVisible = true;
  ScrollController _controller;

  @override
  void initState() {
    // TODO: implement initState
    _controller = ScrollController();
    _controller.addListener(() {
      setState(() {
        _isVisible =
            _controller.position.userScrollDirection == ScrollDirection.forward;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          controller: _controller,
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
                  icon: _isFav
                      ? Icon(
                          Icons.bookmark,
                          color: Theme.of(context).primaryColor,
                        )
                      : Icon(
                          Icons.bookmark_add_outlined,
                        ),
                  onPressed: () => setState(() => _isFav = !_isFav),
                ),
              ],
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  <Widget>[
                    const SizedBox(height: 14),
                    Text(
                      'Rich Dad Poor Dad',
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            'Robert T. Kiyosaki',
                            maxLines: 1,
                            softWrap: true,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              color: Color(0xFFC4C4C4),
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
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
                    SizedBox(height: 16),
                    Text(
                      'Diary of a Wimpy Kid is a series of fiction books written by American author and cartoonist.',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _greyBoxes(Icons.book, 'Rarely used condition'),
                        _greyBoxes(
                            Icons.location_on, '100m from your location'),
                        _greyBoxes(Icons.book, 'Posted on Nov 18'),
                      ],
                    ),
                    SizedBox(height: 40),
                    ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      leading: CircleAvatar(
                        backgroundColor: Colors.purple,
                        child: Text(
                          'S',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                        foregroundColor: Colors.purple.shade100,
                      ),
                      title: Text(
                        'Ad Posted By',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      tileColor: Colors.purple.shade100,
                      subtitle: Text(
                        'Someone',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyXKwG6nqcVDNdps840rCUw4fGhalSJdgQPA&usqp=CAU',
                          fit: BoxFit.cover,
                        ),
                      ),
                      height: 280,
                      decoration: BoxDecoration(
                        color: Colors.red.shade600,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(height: 20),

                    // Container(height: 800),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: AnimatedContainer(
          padding: const EdgeInsets.all(10),
          duration: Duration(milliseconds: 300),
          height: _isVisible ? 60 : 0,
          // color: Theme.of(context).primaryColor,
          child: CustomElevatedButton(
            onPressedFunction: () {},
            child: Text(
              'Make Deal',
              style: const TextStyle(
                letterSpacing: 1,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _greyBoxes(
  IconData icon,
  String label,
) =>
    Material(
      borderRadius: BorderRadius.circular(4),
      color: Color.fromRGBO(196, 196, 196, 1),
      child: Container(
        padding: EdgeInsets.all(8),
        width: 90,
        height: 90,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon),
            SizedBox(height: 6),
            Text(
              label,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
