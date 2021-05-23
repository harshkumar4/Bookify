import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  var index = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      selectedItemColor: Colors.yellow,
      unselectedItemColor: Color.fromRGBO(192, 192, 192, 1),
      onTap: (value) => setState(() => index = value),
      items: [
        const BottomNavigationBarItem(
          activeIcon: const Icon(Icons.home_filled),
          label: 'Home',
          icon: const Icon(Icons.home_outlined),
        ),
        const BottomNavigationBarItem(
          activeIcon: const Icon(Icons.shopping_cart),
          backgroundColor: Colors.yellow,
          label: 'Buy',
          icon: const Icon(Icons.shopping_cart_outlined),
        ),
        const BottomNavigationBarItem(
          activeIcon: const Icon(Icons.monetization_on),
          label: 'Sell',
          icon: const Icon(Icons.monetization_on_outlined),
        ),
        const BottomNavigationBarItem(
          activeIcon: const Icon(Icons.message),
          backgroundColor: Colors.red,
          label: 'Chat',
          icon: const Icon(Icons.message_outlined),
        ),
        BottomNavigationBarItem(
          activeIcon: const Icon(Icons.person),
          backgroundColor: Colors.red,
          label: 'Profile',
          icon: const Icon(Icons.person_outlined),
        ),
      ],
      backgroundColor: Color.fromRGBO(43, 43, 43, 1),
      type: BottomNavigationBarType.fixed,
    );
  }
}
