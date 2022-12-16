import 'dart:io';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_validator/form_validator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:one_go_tourism/Screens/request_submitted_page.dart';
import 'package:one_go_tourism/custom_widgets/constants.dart';
import 'package:one_go_tourism/custom_widgets/validators.dart';

class TourDetailsSingle extends StatelessWidget {
  static const String id = 'TourdetailsSinglespage';

  const TourDetailsSingle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TourDetailsPage();
  }
}

class TourDetailsPage extends StatefulWidget {
  const TourDetailsPage({Key? key}) : super(key: key);

  @override
  State<TourDetailsPage> createState() => _TourDetailsPageState();
}

class _TourDetailsPageState extends State<TourDetailsPage> {
  final emailController = TextEditingController();
  final addressController = TextEditingController();
  TextStyle linkStyle = const TextStyle(color: Colors.blue);
  int currentStep = 0;
  String phoneNumber = '';
  var radiochoice;
  var radiovalue;
  var radioValue;
  int? totalAmount;
  String? packageType;
  String? email;
  String? address;

  int? getTotalAmount() {
    radiochoice == 1 ? totalAmount = 1500000 : totalAmount = 3000000;
    return totalAmount;
  }

  String? getpackageType() {
    radiochoice == 1 ? packageType = "Regular" : packageType = "VIP";
    return packageType;
  }

  File? image;
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) {
        Navigator.pop(context);
        return;
      } else {
        final imageTemporary = File(image.path);
        setState(() => this.image = imageTemporary);
        Navigator.pop(context);
      }
    } on PlatformException {
      setState(() {
        ScaffoldMessenger.of(context).showSnackBar(accessDenied);
      });
    }
  }

  bool visible = false;
  String categoryTitle = "Select your category";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: false,
        leadingWidth: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            Text(
              'Flight, Accomodation, tour and Match tickets',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                  color: Colors.black),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          children: [
            Column(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      visible = true;
                    });
                  },
                  child: Card(
                    child: Container(
                      height: 54.h,
                      width: 354.w,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 15.w),
                            child: Text(categoryTitle),
                          )),
                    ),
                  ),
                ),
                Visibility(
                    visible: visible,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
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
                                  visible = false;
                                  categoryTitle = "Single";
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
                                  visible = false;
                                  categoryTitle = "Couple";
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
                                  visible = false;
                                  categoryTitle = "Multiple";
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
            addVerticalSpacing(29.h),
            Flexible(
                child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Visa (FanID) Registration',
                    style: kBoldTextStyleBlack,
                  ),
                  addVerticalSpacing(15.h),
                  Text(
                    """You will need a visa(fanID) in order to acquire your flight ticket. Please note that your visa comes in the form of a fanID and is only valid before and during the 2022 world cup at Qatar.""",
                    style:  kBoldTextStyleBlack.copyWith(
                                          fontSize: 16.sp,fontWeight: FontWeight.normal),
                  ),
                  addVerticalSpacing(5.h),
                  Text(
                    'To begin registration  of your fanID you will first need to provide your international passport',
                    style:  kBoldTextStyleBlack.copyWith(
                                          fontSize: 16.sp,fontWeight: FontWeight.normal),
                  ),
                  addVerticalSpacing(20),
                  Text(
                    'Upload International passport',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                  ),
                  addVerticalSpacing(15.h),
                  Center(
                    child: Column(
                      children: [
                        image != null
                            ? Image.file(
                                image!,
                                width: 200,
                                height: 200,
                              )
                            : InkWell(
                                onTap: () {
                                  showDialog(
                                      barrierDismissible: true,
                                      useSafeArea: true,
                                      context: context,
                                      builder: (context) => AlertDialog(
                                            actionsAlignment:
                                                MainAxisAlignment.center,
                                            scrollable: false,
                                            contentPadding:
                                                const EdgeInsets.all(10),
                                            title: const Text(
                                                'Choose upload method'),
                                            actions: [
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: const Text('Dismiss'))
                                            ],
                                            content: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                addVerticalSpacing(20),
                                                SizedBox(
                                                    height: 50,
                                                    width: double.infinity,
                                                    child: GestureDetector(
                                                        onTap: () {
                                                          pickImage(ImageSource
                                                              .camera);
                                                        },
                                                        child: const Text(
                                                            'Take a photo'))),
                                                SizedBox(
                                                    height: 50,
                                                    width: double.infinity,
                                                    child: GestureDetector(
                                                        onTap: () {
                                                          pickImage(ImageSource
                                                              .gallery);
                                                        },
                                                        child: const Text(
                                                            'Choose a photo'))),
                                              ],
                                            ),
                                          ));
                                  // pickImage(ImageSource.gallery);
                                },
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.r)),
                                  ),
                                  child: Container(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width,
                                    child: Center(
                                        child: Text(
                                      'International passport',
                                      style: kBoldTextStyleBlack.copyWith(
                                          fontSize: 15,fontWeight: FontWeight.normal),
                                    )),
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                  addVerticalSpacing(40),
                  Card(
                    color: Colors.white,
                    elevation: 2.0,
                    shadowColor: Colors.black,
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                          """A Softcopy of your fanID would be sent to you via your provided email address, within three busness days, while the hardcopy of your fanID would be given to you at the airport, at least 2 hours to your take-off timeNote: The softcopy of your fanID can perform all functions that the hardcopy can perform."""),
                    ),
                  ),
                  addVerticalSpacing(30),
                  const Center(child: Text('Enter mobile number')),
                  addVerticalSpacing(30),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          height: 60,
                          width: 100,
                          child: CountryCodePicker(
                              onChanged: (code) {},
                              // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                              initialSelection: 'NG',
                              favorite: const [
                                '+234',
                                'NG',
                                '+233',
                                '+254',
                                '+255',
                              ],
                              showFlagDialog: false,
                              //Get the country information relevant to the initial selection
                              onInit: (code) {}),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 2,
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: ValidationBuilder()
                              .minLength(10)
                              .maxLength(15)
                              .build(),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ], // Only numbers can be entered
                          onChanged: (value) {
                            phoneNumber = value;
                          },
                          decoration: const InputDecoration(
                            hintText: 'Mobile number',
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                          ),
                        ),
                      ),
                      addVerticalSpacing(20),
                    ],
                  ),
                  addVerticalSpacing(20),
                  Column(
                    children: [
                      const Text('Enter office/Home address'),
                      addVerticalSpacing(20),
                      TextFormField(
                        controller: addressController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: Addressvalidator,
                        onChanged: (value) {
                          address = value;
                        },
                        decoration: const InputDecoration(
                          hintText: 'Office/Home Address',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                        ),
                      ),
                      addVerticalSpacing(20),
                      TextFormField(
                        controller: emailController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: emailvalidator,
                        onChanged: (value) {
                          email = value;
                        },
                        decoration: const InputDecoration(
                          hintText: 'Email address',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                        ),
                      ),
                      addVerticalSpacing(40),
                      Container(
                        color: const Color(0xffFDEAAD),
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: const Center(
                          child: Text(
                              'Please ensure your contact details are correct.'),
                        ),
                      ),
                      addVerticalSpacing(20),
                      const Text('Select type of package'),
                      addVerticalSpacing(20),
                      RadioListTile<int>(
                        groupValue: radiochoice,
                        value: radioValue = 1,
                        title: const Text('Regular'),
                        secondary: radiochoice == radioValue
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
                        value: radioValue = 2,
                        title: const Text('V.I.P'),
                        secondary: radiochoice == radioValue
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
                      addVerticalSpacing(20),
                      radiochoice == 1
                          ? Table(
                              children: [
                                TableRow(children: [
                                  Container(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: const Text('Flight:')),
                                  Container(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: const Text('Economy class'),
                                  )
                                ]),
                                TableRow(children: [
                                  const Text('Accommodation:'),
                                  Container(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: const Text(
                                        'A nice apartment (2 persons per room)'),
                                  )
                                ]),
                                TableRow(children: [
                                  const Text('Feeding:'),
                                  Container(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: const Text('Breakfast Daily'),
                                  )
                                ]),
                                TableRow(children: [
                                  const Text('Tour:'),
                                  Container(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: const Text(
                                        'A One week tour within Doha, Qatar'),
                                  )
                                ]),
                                TableRow(children: [
                                  const Text('Airport:'),
                                  Container(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: const Text(
                                        'Lagos international airport, Lagos, Nigeria.'),
                                  )
                                ]),
                                TableRow(children: [
                                  const Text('Take-Off Date:'),
                                  Container(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: const Text('6th, December, 2022'),
                                  )
                                ]),
                                TableRow(children: [
                                  const Text('Return date:'),
                                  Container(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: const Text('20th, December, 2022'),
                                  )
                                ]),
                                TableRow(children: [
                                  const Text('Take-off time:'),
                                  Container(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: const Text(
                                        'Would be communicated to you few days to the take-off date'),
                                  )
                                ]),
                                TableRow(children: [
                                  const Text(''),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey)),
                                    height: 50,
                                    width: MediaQuery.of(context).size.width,
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Column(
                                        children: [
                                          const Text('Price'),
                                          addVerticalSpacing(5),
                                          const Text('NGN 1,500,000'),
                                        ],
                                      ),
                                    ),
                                  ),
                                ]),
                              ],
                            )
                          : Table(
                              children: [
                                TableRow(children: [
                                  Container(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: const Text('Flight:')),
                                  Container(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: const Text('First class'),
                                  )
                                ]),
                                TableRow(children: [
                                  const Text('Accommodation:'),
                                  Container(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: const Text(
                                        'A nice apartment (1 person per room)'),
                                  )
                                ]),
                                TableRow(children: [
                                  const Text('Feeding:'),
                                  Container(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: const Text(
                                        'Breakfast and Dinner Daily'),
                                  )
                                ]),
                                TableRow(children: [
                                  const Text('Tour:'),
                                  Container(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: const Text(
                                        'A One week tour within Doha, Qatar'),
                                  )
                                ]),
                                TableRow(children: [
                                  const Text('Airport:'),
                                  Container(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: const Text(
                                        'Lagos international airport, Lagos, Nigeria.'),
                                  )
                                ]),
                                TableRow(children: [
                                  const Text('Take-Off Date:'),
                                  Container(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: const Text('6th, December, 2022'),
                                  )
                                ]),
                                TableRow(children: [
                                  const Text('Return date:'),
                                  Container(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: const Text('20th, December, 2022'),
                                  )
                                ]),
                                TableRow(children: [
                                  const Text('Take-off time:'),
                                  Container(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: const Text(
                                        'Would be communicated to you few days to the take-off date'),
                                  )
                                ]),
                                TableRow(children: [
                                  const Text(''),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey)),
                                    height: 50,
                                    width: MediaQuery.of(context).size.width,
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Column(
                                        children: [
                                          const Text('Price'),
                                          addVerticalSpacing(5),
                                          const Text('NGN 5,000,000'),
                                        ],
                                      ),
                                    ),
                                  ),
                                ]),
                              ],
                            ),
                    ],
                  ),
                  const Text('Summary'),
                  addVerticalSpacing(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Category'),
                      Text('Single'),
                    ],
                  ),
                  addVerticalSpacing(40),
                  Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: image != null
                          ? Image.file(
                              image!,
                              width: 400,
                              height: 400,
                            )
                          : Container(
                              color: Colors.grey,
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              child: const Center(
                                  child: Text(
                                'International passport',
                                style: kBoldTextStyleBlack,
                              )),
                            ),
                    ),
                  ),
                  addVerticalSpacing(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Mobile number'),
                      Text(phoneNumber),
                    ],
                  ),
                  addVerticalSpacing(20),
                  radiochoice == 1
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Package type'),
                            Text('Regular'),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Package type'),
                            Text('VIP'),
                          ],
                        ),
                  addVerticalSpacing(40),
                  const Text(
                    'Your tour guide',
                    style: kBoldTextStyleBlack,
                  ),
                  addVerticalSpacing(40),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      elevation: 4.0,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Center(
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/statpiza.jpg'),
                                backgroundColor: Colors.grey,
                                radius: 70,
                              ),
                            ),
                            addVerticalSpacing(20),
                            const Center(child: Text('Usman Taofik Yasin')),
                            addVerticalSpacing(20),
                            Center(
                                child: Text(
                              'STATSPIZZA CONSULTS LIMITED',
                              style: kBoldTextStyleBlack.copyWith(fontSize: 17),
                            )),
                            addVerticalSpacing(20),
                            const Text(
                                'Tour guide during the FIFA world cup in Russia'),
                            addVerticalSpacing(20),
                            Card(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  children: [
                                    const Center(
                                        child: Text(
                                      'Meeting point',
                                      style: kBoldTextStyleBlack,
                                    )),
                                    addVerticalSpacing(50),
                                    const Center(
                                        child: Text(
                                            'Lagos international airport, Lagos, Nigeria.')),
                                    addVerticalSpacing(30),
                                    const Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                            'Coming from a different state/country?')),
                                    addVerticalSpacing(20),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: RichText(
                                        text: TextSpan(children: <TextSpan>[
                                          TextSpan(
                                              text: 'Book a flight to Lagos',
                                              style: linkStyle.copyWith(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () {}),
                                        ]),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            addVerticalSpacing(50),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Price: '),
                                Text('1,500,000'),
                              ],
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            const Text(
                                'Your request shall be reviewed within the next 24 working hours. You can only make payment after approval of your request '),
                            const SizedBox(
                              height: 50,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

const accessDenied = SnackBar(
  backgroundColor: Colors.black,
  content: Text('Access not granted'),
);
