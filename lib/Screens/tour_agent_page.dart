import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_tourism/Screens/select_category.dart';
import 'package:one_go_tourism/Screens/tour_agent_details.dart';
import 'package:one_go_tourism/custom_widgets/constants.dart';

class TourAgentPage extends StatelessWidget {
  static const String id = 'TouragentPage';
  TextStyle defaultStyle = const TextStyle(color: Colors.grey, fontSize: 15.0);
  TextStyle linkStyle = const TextStyle(color: Colors.blue);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            Text(
              'Package details',
              style: kBoldTextStyleBlack,
            )
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            addVerticalSpacing(30.h),
            Container(
              height: 185.h,
              width: 193.w,
              decoration: BoxDecoration(
                  color: Color(0xffE4E4E4),
                  borderRadius: BorderRadius.all(Radius.circular(10.r))),
              child: const Center(child: Text('L.O.G.O')),
            ),
            addVerticalSpacing(30),
            const Text('Statspizza Consult'),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text(
            //     'Available tour agents',
            //     style: kBoldTextStyleBlack.copyWith(
            //       fontSize: 17,
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.r)),
                ),
                elevation: 8.0,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      addVerticalSpacing(20),
                      Table(
                        children: [
                          TableRow(children: [
                            Container(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: const Text('Package:')),
                            Container(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: const Text(
                                  'Accomodation, flight & match tickets and a one(1) week tour of Doha, Qatar'),
                            )
                          ]),
                          TableRow(children: [
                            Container(
                              height: 15.h,
                            ),
                            Container(
                              height: 15.h,
                            )
                          ]),
                          TableRow(children: [
                            const Text('Price:'),
                            Container(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: const Text(
                                  'Regular - NGN 1,500,000.00\nVIP - NGN 5,000,000.00'),
                            )
                          ]),
                          TableRow(children: [
                            Container(
                              height: 15.h,
                            ),
                            Container(
                              height: 15.h,
                            )
                          ]),
                          TableRow(children: [
                            const Text('Tour Duration:'),
                            Container(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: const Text('3rd - 20th December 2022'),
                            )
                          ]),
                        ],
                      ),
                      RichText(
                          text: TextSpan(children: <TextSpan>[
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, TourAgentDetails.id);
                            },
                          text: 'View portfolio',
                          style: linkStyle,
                        )
                      ])),
                      addVerticalSpacing(100),
                      Center(
                          child: SizedBox(
                              height: 50,
                              width: 150,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30)),
                                              side: BorderSide(
                                                  color: Colors.blue)))),
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, SelectCategory.id);
                                  },
                                  child: const Text('Select'))))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
