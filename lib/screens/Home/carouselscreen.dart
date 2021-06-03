import 'dart:async';

import 'package:bookify_try/screens/Auth/login.dart';
import 'package:bookify_try/screens/Auth/signup.dart';
import 'package:bookify_try/widgets/buttons.dart';
import 'package:bookify_try/widgets/slide.dart';
import 'package:bookify_try/widgets/slide_dots.dart';
import 'package:bookify_try/widgets/slide_item.dart';
import 'package:flutter/material.dart';

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
        duration: Duration(milliseconds: 300),
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
        color: Colors.black,
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
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  FlatButton(
                      child: Text(
                        'Getting Started',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: const EdgeInsets.all(15),
                      color: Color(0xFFFFFF00),
                      textColor: Colors.black,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (ctx) => SignUpScreen(),
                          ),
                        );
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Have an account?',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            CustomElevatedButton(
                              child: Text(
                                'Login',
                                style: const TextStyle(
                                  letterSpacing: 1,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              onPressedFunction: () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (ctx) => LoginScreen(),
                                  ),
                                );
                              },
                            ),
                          ],
                        );
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
