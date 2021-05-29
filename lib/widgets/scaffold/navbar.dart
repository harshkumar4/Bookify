import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  final Function screenNavigate;

  NavBar(this.screenNavigate);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  var index = 0;
  @override
  Widget build(BuildContext context) {
    print('build <<<<<<<');
    return BottomNavigationBar(
      currentIndex: index,
      selectedItemColor: Colors.yellow,
      unselectedItemColor: Color.fromRGBO(192, 192, 192, 1),
      onTap: (int value) {
        widget.screenNavigate(value);
        setState(() => index = value);
      },
      items: [
        _navItem(
          'Home',
          Icon(Icons.home_filled),
          Icon(Icons.home_outlined),
        ),
        _navItem(
          'Buy',
          Icon(Icons.shopping_cart),
          Icon(Icons.shopping_cart_outlined),
        ),
        _navItem(
          'Sell',
          Icon(Icons.monetization_on),
          Icon(Icons.monetization_on_outlined),
        ),
        _navItem(
          'Chat',
          Icon(Icons.message),
          Icon(Icons.message_outlined),
        ),
        _navItem(
          'Profile',
          Icon(Icons.person),
          Icon(Icons.person),
        ),
      ],
      backgroundColor: Color.fromRGBO(43, 43, 43, 1),
      type: BottomNavigationBarType.fixed,
    );
  }
}

BottomNavigationBarItem _navItem(
        String label, Icon activeIcon, Icon inactiveicon) =>
    BottomNavigationBarItem(
      activeIcon: activeIcon,
      label: label,
      icon: inactiveicon,
    );
