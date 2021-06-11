import 'dart:async';

import 'package:flutter/material.dart';

import 'package:bookify/screens/Auth/login.dart';
import 'package:bookify/screens/Auth/signup.dart';

import 'package:bookify/models/slide.dart';

import 'package:bookify/widgets/buttons.dart';
import 'package:bookify/widgets/slide_dots.dart';
import 'package:bookify/widgets/slide_item.dart';

class CarouselScreen extends StatefulWidget {
  final routeName = '/carousel';

  @override
  CarouselScreenState createState() => CarouselScreenState();
}

class CarouselScreenState extends State<CarouselScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 200),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: <Widget>[
                    PageView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: _pageController,
                      onPageChanged: _onPageChanged,
                      itemCount: slideList.length,
                      itemBuilder: (ctx, i) => SlideItem(i),
                    ),
                    Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(bottom: 35),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              for (int i = 0; i < slideList.length; i++)
                                if (i == _currentPage)
                                  SlideDots(true)
                                else
                                  SlideDots(false)
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  CustomElevatedButton(
                    child: const Text(
                      'Log In',
                      style: const TextStyle(
                        letterSpacing: 1,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    onPressedFunction: () {
                      Navigator.of(context).pushNamed(LoginScreen().routeName);
                    },
                  ),
                  const SizedBox(height: 8),
                  TextButton(
                    child: const Text(
                      'Sign Up',
                      style: const TextStyle(
                        color: Color(0xFFFFFF00),
                        letterSpacing: 1,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(SignUpScreen().routeName);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
