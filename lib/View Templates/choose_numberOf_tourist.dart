
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_tourism/View%20Templates/checkout_screen.dart';
import 'package:one_go_tourism/custom_widgets/constants.dart';
import 'package:one_go_tourism/custom_widgets/reusable_button.dart';

class NumberOFTourist extends StatelessWidget {
  const NumberOFTourist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        elevation: 0,
              leading: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                 
                ],
              ),
              backgroundColor: Colors.white,
            ),
            body:Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  addVerticalSpacing(30),
                   Text(
                        'Number of tourists',
                         style:  TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  addVerticalSpacing(16),
                   Text(
                          'This package has only 15 slots left',
                           style:  TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    addVerticalSpacing(90),
                    Row(
                      children: [
                        Text(
                        'Tourists',
                         style:  TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  addHorizontalSpacing(70),
                  Icon(
                    Icons.add_circle_outline_sharp,
                    color: Colors.blue,
                  ),
                  addHorizontalSpacing(50),
                   Text(
                        '1',
                         style:  TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  addHorizontalSpacing(50),
                   Icon(
                    Icons.remove_circle_outline_sharp,
                    color: Colors.blue,
                  )
                      ],
                    ),
                    addVerticalSpacing(100),
                     Text(
                        'Total',
                         style:  TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  addVerticalSpacing(15),
               Divider(
                height: 3,color: Colors.grey,
               ),
               addVerticalSpacing(15),
                Text(
                        '#1000000',
                         style:  TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  addVerticalSpacing(240),
                      Padding(
                  padding: const EdgeInsets.only(left: 25,right: 25),
                  child: ReusableButton(const Text('Proceed'), () {
                      Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Checkout()));
                  }),
                ),
                ],
              ),
            ) ,
    );
  }
}