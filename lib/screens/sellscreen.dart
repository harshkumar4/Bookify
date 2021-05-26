import 'package:bookify_try/screens/addimage.dart';
import 'package:bookify_try/sizeconfig.dart';
import 'package:bookify_try/widgets/authinputfield.dart';
import 'package:flutter/material.dart';

class SellScreen extends StatelessWidget {
  const SellScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 6),
          Text(
            'Sell Books',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w900, fontSize: 35),
          ),
          SizedBox(height: getRelativeHeight(0.03)),
          textField('Title', TextInputType.emailAddress),
          SizedBox(height: getRelativeHeight(0.03)),
          textField('Author', TextInputType.emailAddress),
          SizedBox(height: getRelativeHeight(0.02)),
          textField('Description', TextInputType.visiblePassword, true),
          SizedBox(height: getRelativeHeight(0.3)),
          ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0))),
              backgroundColor: MaterialStateProperty.all(Colors.yellowAccent),
              foregroundColor: MaterialStateProperty.all(Colors.black),
              minimumSize: MaterialStateProperty.all(Size(double.infinity, 40)),
              alignment: Alignment.center,
            ),
            child: const Text('Next >',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 17)),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AddImageScreen()));
            },
          ),
        ],
      ),
    );
  }
}
