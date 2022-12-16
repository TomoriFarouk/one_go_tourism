import 'package:flutter/material.dart';
import 'package:one_go_tourism/Screens/TourDetailsPages/tour_details_couple.dart';
import 'package:one_go_tourism/Screens/TourDetailsPages/tour_details_multiple.dart';
import 'package:one_go_tourism/Screens/TourDetailsPages/tour_details_single.dart';
import 'package:one_go_tourism/custom_widgets/constants.dart';
import 'package:one_go_tourism/custom_widgets/reusable_button.dart';

class SelectCategory extends StatelessWidget {
  static String id = 'SelectCategory';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: CategoryHome(),
    );
  }
}

class CategoryHome extends StatefulWidget {
  @override
  State<CategoryHome> createState() => _CategoryHomeState();
}

class _CategoryHomeState extends State<CategoryHome> {
  int? radiochoice;
  @override
  Widget build(BuildContext context) {
    int radiovalue;
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 20),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  RadioListTile<int>(
                    groupValue: radiochoice,
                    value: radiovalue = 1,
                    title: const Text('Single'),
                    secondary: radiochoice == radiovalue
                        ? const Icon(
                            Icons.check_circle,
                            color: Colors.blue,
                          )
                        : null,
                    onChanged: (value) {
                      setState(() {
                        radiochoice = 1;
                      });
                    },
                  ),
                  RadioListTile<int>(
                    groupValue: radiochoice,
                    value: radiovalue = 2,
                    title: const Text('Couple'),
                    secondary: radiochoice == radiovalue
                        ? const Icon(
                            Icons.check_circle,
                            color: Colors.blue,
                          )
                        : null,
                    onChanged: (value) {
                      setState(() {
                        radiochoice = 2;
                      });
                    },
                  ),
                  RadioListTile<int>(
                    groupValue: radiochoice,
                    value: radiovalue = 3,
                    title: const Text('Multiple'),
                    secondary: radiochoice == radiovalue
                        ? const Icon(
                            Icons.check_circle,
                            color: Colors.blue,
                          )
                        : null,
                    onChanged: (value) {
                      setState(() {
                        radiochoice = 3;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        ReusableButton(
            const Text('Continue  >'),
            radiochoice == null
                ? null
                : () {
                    if (radiochoice == 1) {
                      return Navigator.pushNamed(context, TourDetailsSingle.id);
                    } else if (radiochoice == 2) {
                      return Navigator.pushNamed(context, TourDetailsCouple.id);
                    } else {
                      Navigator.pushNamed(context, TourDetailsMultiple.id);
                    }
                  }),
      ]),
    );
  }
}
