import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_tourism/Screens/tour_agent_page.dart';
import 'package:one_go_tourism/custom_widgets/constants.dart';
import 'package:one_go_tourism/custom_widgets/reusable_button.dart';

class CheckAvailability extends StatelessWidget {
  const CheckAvailability({Key? key}) : super(key: key);

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
            //SizedBox(width: 15.w),
            Text(
              'Check Availability',
              style: kMediumTextStyleBlack,
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, top: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Container(
                height: 50.h,
                width: 100.w,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.calendar_today,
                        color: Colors.black,
                      ),
                      Text(
                        '01',
                        style: kBoldTextStyleBlack,
                      )
                    ]),
              ),
              Container(
                height: 50.h,
                width: 150.w,
                decoration: BoxDecoration(
                    border: Border(
                  left: BorderSide(width: 3.w, color: Colors.black),
                  right: BorderSide(width: 3.w, color: Colors.black),
                )),
                child: Center(
                  child: Text(
                    'January',
                    style: kBoldTextStyleBlack,
                  ),
                ),
              ),
              Container(
                height: 50.h,
                width: 120.w,
                child: Center(
                  child: Text(
                    '1999',
                    style: kBoldTextStyleBlack,
                  ),
                ),
              )
            ],
          ),
          addVerticalSpacing(23.h),
          Text(
            'Number of travellers',
            style: kBoldTextStyleBlack,
          ),
          addVerticalSpacing(22.h),
          Row(children: [
            Text(
              'Adult (age 16-99)',
              style: kMediumTextStyleBlack,
            ),
            addHorizontalSpacing(65.w),
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.add),
                    iconSize: 25,
                    color: Colors.black,
                    onPressed: () {},
                  ),
                  Text(
                    '1',
                    style: kBoldTextStyleBlack,
                  ),
                  IconButton(
                    icon: Icon(Icons.remove),
                    iconSize: 25,
                    color: Colors.black,
                    // focusColor: ColorManager.goldColor,
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ]),
          addVerticalSpacing(38.h),
          Row(children: [
            Text(
              'Child (age 5-15)',
              style: kMediumTextStyleBlack,
            ),
            addHorizontalSpacing(65.w),
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.add),
                    iconSize: 25,
                    color: Colors.black,
                    onPressed: () {},
                  ),
                  Text(
                    '1',
                    style: kBoldTextStyleBlack,
                  ),
                  IconButton(
                    icon: Icon(Icons.remove),
                    iconSize: 25,
                    color: Colors.black,
                    // focusColor: ColorManager.goldColor,
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ]),
          addVerticalSpacing(73.h),
          SizedBox(
              height: 150,
              child: ReusableButton(const Text('Continue'), () {
               
                 Navigator.pushNamed(context, TourAgentPage.id);
              }))
        ]),
      ),
    ));
  }
}
