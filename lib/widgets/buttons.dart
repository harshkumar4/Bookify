import 'package:flutter/material.dart';

class CustomElevatedButton extends ElevatedButton {
  final VoidCallback onPressedFunction;
  final Widget child;
  final Size size;

  CustomElevatedButton({
    this.onPressedFunction,
    this.child,
    this.size = const Size(double.infinity, 45),
  }) : super(
          child: child,
          onPressed: onPressedFunction,
        );

  @override
  // TODO: implement style
  ButtonStyle get style => ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.yellowAccent),
        foregroundColor: MaterialStateProperty.all(Colors.black),
        minimumSize: MaterialStateProperty.all(
          size,
        ),
        alignment: Alignment.center,
      );
}

/*
ElevatedButton elevatedButtonTheme({
  @required void Function() onPressedFunction,
  @required Widget child,
  Size size = const Size(double.infinity, 40),
}) =>
    ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.yellowAccent),
        foregroundColor: MaterialStateProperty.all(Colors.black),
        minimumSize: MaterialStateProperty.all(
          size,
        ),
        alignment: Alignment.center,
      ),
      child: child,
      onPressed: onPressedFunction,
    );
*/

Widget googleButton({
  @required Widget icon,
  @required Widget label,
  @required VoidCallback onPressedFunction,
}) =>
    ElevatedButton.icon(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))),
        backgroundColor: MaterialStateProperty.all(Colors.white),
        foregroundColor: MaterialStateProperty.all(Colors.black),
        minimumSize: MaterialStateProperty.all(Size(double.infinity, 45)),
        alignment: Alignment.center,
      ),
      icon: icon,
      label: label,
      onPressed: onPressedFunction,
    );
