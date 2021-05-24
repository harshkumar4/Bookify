import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget textField(String label, TextInputType keyboard,
        [bool hiddenText = false]) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        Container(
          height: 50,
          child: TextFormField(
            obscureText: hiddenText,
            style: const TextStyle(color: Colors.yellowAccent, fontSize: 18),
            keyboardType: keyboard,
            cursorColor: Colors.yellowAccent,
            cursorHeight: 24,
            inputFormatters: [
              FilteringTextInputFormatter.deny(RegExp(r'[ ]')),
            ],
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                vertical: 2,
                horizontal: 8,
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.redAccent, width: 2),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 2,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 2,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              border: const UnderlineInputBorder(borderSide: BorderSide.none),
            ),
          ),
        ),
      ],
    );
