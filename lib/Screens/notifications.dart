import 'package:flutter/material.dart';
import 'package:one_go_tourism/custom_widgets/constants.dart';

class NotificationsPage extends StatelessWidget {
  static const String id = 'NotificationsPage';
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Align(
          alignment: Alignment.center,
          child: ListView(scrollDirection: Axis.vertical, children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.41,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/nonotifications.jpg'),
                  ),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'No notifications yet',
                style: kBoldTextStyleBlack,
              ),
            ),
            addVerticalSpacing(20),
            const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text('New notifications will appear here,'),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
