import 'package:bookify/widgets/buttons.dart';
import 'package:bookify/widgets/inputfield.dart';
import 'package:flutter/material.dart';

class CodScreen extends StatelessWidget {
  final routeName = 'cod-screen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_sharp,
                size: 30,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'Cash on Delivery',
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.w900,
                    fontSize: 33,
                  ),
                ),
                SizedBox(
                  height: 36,
                  child: Text(
                    'Pay only on receiving your order!',
                    style: TextStyle(
                      color: Color(0xFFC4C4C4),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Divider(
                  height: 4,
                  color: Theme.of(context).primaryColor,
                  thickness: 4,
                  endIndent: 130,
                ),
                SizedBox(height: 30),
                textField('Name', TextInputType.name),
                SizedBox(height: 22),
                textField('Contact', TextInputType.number),
                SizedBox(height: 22),
                textField('Address', TextInputType.streetAddress, lines: 4),
              ],
            ),
          ),
          bottomNavigationBar: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Price Rs. 234',
                style: TextStyle(
                  letterSpacing: 0.8,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).accentColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 6,
                  right: 16.0,
                  left: 16.0,
                ),
                child: CustomElevatedButton(
                  onPressedFunction: () {},
                  child: Text(
                    'Confirm Order',
                    style: const TextStyle(
                      letterSpacing: 1,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
