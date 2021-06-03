import 'package:bookify_try/screens/addimage.dart';
import 'package:bookify_try/sizeconfig.dart';
import 'package:bookify_try/widgets/inputfield.dart';
import 'package:bookify_try/widgets/buttons.dart';
import 'package:flutter/material.dart';

class SellScreen extends StatelessWidget {
  const SellScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {FocusScope.of(context).unfocus()},
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 6),
            Text(
              'Sell Books',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: getRelativeHeight(0.03)),
            textField('Title', TextInputType.name),
            SizedBox(height: getRelativeHeight(0.03)),
            textField('Author', TextInputType.name),
            SizedBox(height: getRelativeHeight(0.02)),
            textField('Description', TextInputType.text, lines: 4),
            SizedBox(height: getRelativeHeight(0.16)),
            CustomElevatedButton(
              onPressedFunction: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (ctx) => AddImageScreen(),
                ));
              },
              child: const Text(
                'Next >',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  letterSpacing: 1,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
