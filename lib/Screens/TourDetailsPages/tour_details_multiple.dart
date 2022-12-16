import 'package:flutter/material.dart';
import 'package:one_go_tourism/custom_widgets/constants.dart';
import 'package:one_go_tourism/custom_widgets/reusable_button.dart';

import '3_people_multiple.dart';
import '4_people_multiple.dart';
import '5_people_multiple.dart';

class TourDetailsMultiple extends StatelessWidget {
  static const String id = 'Multipledetailspage';
  const TourDetailsMultiple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MultiplePeopleSelect();
  }
}

class MultiplePeopleSelect extends StatefulWidget {
  const MultiplePeopleSelect({Key? key}) : super(key: key);

  @override
  State<MultiplePeopleSelect> createState() => _MultiplePeopleSelectState();
}

class _MultiplePeopleSelectState extends State<MultiplePeopleSelect> {
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
      body: SelectNumOfPeople(),
    );
  }
}

class SelectNumOfPeople extends StatefulWidget {
  @override
  State<SelectNumOfPeople> createState() => _SelectNumOfPeopleState();
}

class _SelectNumOfPeopleState extends State<SelectNumOfPeople> {
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
              const Text(
                'Flight, Accomodation, tour and Match tickets',
                style: kBoldTextStyleBlack,
              ),
              addVerticalSpacing(40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Select the number of individuals',
                    style: kBoldTextStyleBlack,
                  ),
                  addVerticalSpacing(20),
                  RadioListTile<int>(
                    groupValue: radiochoice,
                    value: radiovalue = 1,
                    title: const Text('3'),
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
                    title: const Text('4'),
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
                    title: const Text('5'),
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
                      return Navigator.pushNamed(context, ThreePeoplePage.id);
                    } else if (radiochoice == 2) {
                      return Navigator.pushNamed(context, FourPeoplePage.id);
                    } else {
                      Navigator.pushNamed(context, FivePeoplePage.id);
                    }
                  }),
      ]),
    );
  }

  // Widget reviewCard(){
  //   return Container(
  //     height: ,
  //   )
  // }
}
