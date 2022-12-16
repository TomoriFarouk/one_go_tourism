import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_paystack/flutter_paystack.dart';
import 'package:one_go_tourism/Screens/PaymentPages/payment_failed.dart';
import 'package:one_go_tourism/Screens/PaymentPages/payment_success.dart';
import 'package:one_go_tourism/custom_widgets/constants.dart';
import 'package:one_go_tourism/models/user_datamodel.dart';
import 'package:provider/provider.dart';

class PaymentPage extends StatefulWidget {
  static const String id = 'Paymentspage';

  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  var publicKey = 'pk_test_38be95640f09d8176da690c9b631c81c14283c19';
  final plugin = PaystackPlugin();

  static const _chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  final Random _rnd = Random();

  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

  @override
  void initState() {
    super.initState();
    plugin.initialize(publicKey: publicKey);
  }

  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context);
    List? dataList = Provider.of<UserData>(context).userDataList;
    String email = dataList?[0];
    String fName = dataList?[2];
    void _makePayment() async {
      try {
        Charge charge = Charge()
          ..amount = 150000000
          ..reference = getRandomString(20)
          ..email = email;

        CheckoutResponse paymentResponse = await plugin.checkout(
          context,
          fullscreen: true,
          method: CheckoutMethod.card,
          charge: charge,
        );
        paymentResponse.status
            ? navigator.pushReplacement(
                MaterialPageRoute(builder: (context) => PaymentSuccess()))
            : navigator.pushReplacement(
                MaterialPageRoute(builder: (context) => PaymentFailed()));
        print(paymentResponse.status);
        print(paymentResponse.message);
        print(paymentResponse.verify);
        print(paymentResponse.reference);
      } catch (e) {
        print(e.toString());
      }
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              ListView(
                children: [
                  addVerticalSpacing(20),
                  const Text(
                    'User Details',
                    style: kBoldTextStyleBlack,
                  ),
                  addVerticalSpacing(30),
                  Table(
                    children: [
                      TableRow(children: [
                        Container(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: const Text('User Full Name:')),
                        Container(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(fName != null ? fName : 'Loading...'),
                        )
                      ]),
                      TableRow(children: [
                        Container(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: const Text('User Email:')),
                        Container(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(email != null ? email : 'Loading...'),
                        )
                      ]),
                      TableRow(children: [
                        const Text('Amount Due'),
                        Container(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: const Text(
                            '1,500,000',
                            style: kBoldTextStyleBlack,
                          ),
                        )
                      ]),
                    ],
                  ),
                  addVerticalSpacing(20),
                ],
              ),
              Positioned(
                bottom: 0,
                child: GestureDetector(
                  onTap: () {
                    _makePayment();
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        border: Border.all(color: Colors.white),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: const Center(
                        child: Text(
                      'Make Payment of 1,500,000',
                      style: kBoldTextStyleBlack,
                    )),
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
