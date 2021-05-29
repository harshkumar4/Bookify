import 'package:bookify_try/screens/screencontroller.dart';
import 'package:bookify_try/sizeconfig.dart';
import 'package:bookify_try/widgets/buttons.dart';
import 'package:flutter/material.dart';

import '../../widgets/inputfield.dart';

class LoginScreen extends StatelessWidget {
  final routeName = '/login';
  @override
  Widget build(BuildContext context) {
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
                  SizedBox(height: getRelativeHeight(0.07)),
                  const Text(
                    'Log In',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(height: getRelativeHeight(0.03)),
                  textField('Email', TextInputType.emailAddress),
                  SizedBox(height: getRelativeHeight(0.02)),
                  textField('Password', TextInputType.visiblePassword,
                      hiddenText: true),
                  SizedBox(height: getRelativeHeight(0.03)),
                  CustomElevatedButton(
                    onPressedFunction: () {},
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 17,
                      ),
                    ),
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
                  SizedBox(height: getRelativeHeight(0.3)),
                  googleButton(
                    icon: Image.network(
                      'https://cdn.changelog.com/uploads/icons/news_sources/Rr/icon_small.png?v=63685082660',
                      fit: BoxFit.cover,
                      height: 30,
                      width: 30,
                    ),
                    label: const Text(
                      'Log in with Google',
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 17),
                    ),
                    onPressedFunction: () {},
                  ),
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
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
