import 'package:bookify_try/screens/homescreen.dart';
import 'package:flutter/material.dart';

import '../widgets/authinputfield.dart';

class LoginScreen extends StatelessWidget {
  final routeName = '/login';
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).padding.top +
            MediaQuery.of(context).padding.bottom);
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
            body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight * 0.07),
                const Text(
                  'Log In',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(height: screenHeight * 0.03),
                textField('Email', TextInputType.emailAddress),
                SizedBox(height: screenHeight * 0.02),
                textField('Password', TextInputType.visiblePassword, true),
                SizedBox(height: screenHeight * 0.03),
                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0))),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.yellowAccent),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    minimumSize:
                        MaterialStateProperty.all(Size(double.infinity, 40)),
                    alignment: Alignment.center,
                  ),
                  child: const Text('Log in',
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 17)),
                  onPressed: () {
                    Navigator.of(context).pushNamed(HomeScreen().routeName);
                  },
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Forgot your password?',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.3),
                _loginButton(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Register!',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ))
                  ],
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}

Widget _loginButton() => ElevatedButton.icon(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))),
        backgroundColor: MaterialStateProperty.all(Colors.white),
        foregroundColor: MaterialStateProperty.all(Colors.black),
        minimumSize: MaterialStateProperty.all(Size(double.infinity, 40)),
        alignment: Alignment.center,
      ),
      icon: Image.network(
        'https://cdn.changelog.com/uploads/icons/news_sources/Rr/icon_small.png?v=63685082660',
        fit: BoxFit.cover,
        height: 30,
        width: 30,
      ),
      label: const Text(
        'Log in with Google',
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 17),
      ),
      onPressed: () {},
    );
