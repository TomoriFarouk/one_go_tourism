import 'package:flutter/material.dart';
import 'package:one_go_tourism/Screens/home_screen.dart';
import 'package:one_go_tourism/custom_widgets/constants.dart';
import 'package:one_go_tourism/custom_widgets/reusable_button.dart';

class PaymentSuccess extends StatelessWidget {
  static const String id = 'paymentsuccess';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          addVerticalSpacing(40),
          const Icon(
            Icons.check_circle,
            color: Colors.green,
            size: 90,
          ),
          const Text(
            'Payment Successfull',
            style: kBoldTextStyleBlack,
          ),
          addVerticalSpacing(30),
          Row(
            children: [
              Expanded(
                child: ReusableButton(const Text('Download Slip'), () {}),
              ),
              Expanded(
                child: ReusableButton(const Text('Home'), () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainScreen()));
                }),
              ),
            ],
          )
        ],
      ),
    );
  }
}
