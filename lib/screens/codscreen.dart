import 'package:flutter/material.dart';

import '../sizeconfig.dart';

class CodScreen extends StatelessWidget {
  final routeName = 'cod-screen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            'Tatti',
          ),
        ),
      ),
    );
  }
}
