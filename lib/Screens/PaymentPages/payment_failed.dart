import 'package:flutter/material.dart';
import 'package:one_go_tourism/Screens/home_screen.dart';
import 'package:one_go_tourism/custom_widgets/constants.dart';
import 'package:one_go_tourism/custom_widgets/reusable_button.dart';

class PaymentFailed extends StatelessWidget {
  static const String id = 'paymentfailed';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          addVerticalSpacing(90),
          const Icon(
            Icons.sms_failed,
            color: Colors.red,
            size: 90,
          ),
          const Text(
            'Payment Failed',
            style: kBoldTextStyleBlack,
          ),
          addVerticalSpacing(30),
          ReusableButton(const Text('Retry payment'), () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const MainScreen()));
          })
        ],
      ),
    );
  }
}
