import 'package:bookify_try/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../sizeconfig.dart';

import '../widgets/authinputfield.dart';
import 'package:bookify_try/screens/login.dart';

class SignUpScreen extends StatelessWidget {
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
                  'Create Account',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(height: getRelativeHeight(0.03)),
                textField('First Name', TextInputType.text),
                SizedBox(height: getRelativeHeight(0.02)),
                textField('Email', TextInputType.emailAddress),
                SizedBox(height: getRelativeHeight(0.02)),
                textField('Password', TextInputType.visiblePassword, true),
                SizedBox(height: getRelativeHeight(0.03)),
                CustomElevatedButton(
                  child: const Text(
                    'Create Account',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 17),
                  ),
                  onPressedFunction: () {
                    Navigator.of(context).pushNamed(LoginScreen().routeName);
                  },
                  // size: Size(100, 50),
                ),
                SizedBox(height: getRelativeHeight(0.22)),
                googleButton(
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
                  onPressedFunction: () {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Login!',
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
