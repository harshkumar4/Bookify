import 'package:bookify_try/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatelessWidget {
  final routeName = '/login';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                SizedBox(height: size.height * 0.09),
                const Text(
                  'Log In',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 30),
                _textField('Email', TextInputType.emailAddress),
                const SizedBox(height: 25),
                _textField('Password', TextInputType.visiblePassword),
                const SizedBox(height: 22),
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
                SizedBox(height: size.height * 0.32),
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

Widget _textField(String label, TextInputType keyboard) => TextFormField(
      inputFormatters: [
        FilteringTextInputFormatter.deny(RegExp(r'[ ]')),
      ],
      style: const TextStyle(color: Colors.yellowAccent, fontSize: 18),
      keyboardType: keyboard,
      cursorColor: Colors.yellowAccent,
      cursorHeight: 23,
      decoration: InputDecoration(
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.redAccent, width: 2),
        ),
        labelText: label,
        labelStyle: const TextStyle(
          color: Colors.yellow,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.5,
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
            width: 2,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
            width: 2,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        border: const UnderlineInputBorder(borderSide: BorderSide.none),
      ),
    );
