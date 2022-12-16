import 'dart:io';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_validator/form_validator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:one_go_tourism/custom_widgets/constants.dart';
import 'package:one_go_tourism/custom_widgets/validators.dart';

import '../request_submitted_page.dart';
import 'tour_details_single.dart';

class FivePeoplePage extends StatelessWidget {
  static const String id = 'Fivepeoplepage';
  const FivePeoplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: const FivepeopleBookingScreen(),
    ));
  }
}

class FivepeopleBookingScreen extends StatefulWidget {
  const FivepeopleBookingScreen({Key? key}) : super(key: key);

  @override
  State<FivepeopleBookingScreen> createState() =>
      _FivepeopleBookingScreenState();
}

class _FivepeopleBookingScreenState extends State<FivepeopleBookingScreen> {
  File? image1, image2, image3, image4, image5;
  final emailController = TextEditingController();
  final addressController = TextEditingController();
  TextStyle linkStyle = const TextStyle(color: Colors.blue);
  int currentStep = 0;
  String? phoneNumber1, phoneNumber2, phoneNumber3, phoneNumber4, phoneNumber5;
  int? radiochoice;
  var radiovalue;
  int? totalAmount;
  String? packageType;
  String? email;
  String? address;

  int? getTotalAmount() {
    radiochoice == 1 ? totalAmount = 10000000 : totalAmount = 19000000;
    return totalAmount;
  }

  String? getpackageType() {
    radiochoice == 1 ? packageType = "Regular" : packageType = "VIP";
    return packageType;
  }

  Future pickImage1(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) {
        Navigator.pop(context);
        return;
      } else {
        final imageTemporary = File(image.path);
        setState(() => image1 = imageTemporary);
        Navigator.pop(context);
      }
    } on PlatformException {
      setState(() {
        ScaffoldMessenger.of(context).showSnackBar(accessDenied);
      });
    }
  }

  Future pickImage4(
    ImageSource source,
  ) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) {
        Navigator.pop(context);
        return;
      } else {
        final imageTemporary = File(image.path);
        setState(() => image4 = imageTemporary);
        Navigator.pop(context);
      }
    } on PlatformException {
      setState(() {
        ScaffoldMessenger.of(context).showSnackBar(accessDenied);
      });
    }
  }

  Future pickImage3(
    ImageSource source,
  ) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) {
        Navigator.pop(context);
        return;
      } else {
        final imageTemporary = File(image.path);
        setState(() => image3 = imageTemporary);
        Navigator.pop(context);
      }
    } on PlatformException {
      setState(() {
        ScaffoldMessenger.of(context).showSnackBar(accessDenied);
      });
    }
  }

  Future pickImage2(
    ImageSource source,
  ) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) {
        Navigator.pop(context);
        return;
      } else {
        final imageTemporary = File(image.path);
        setState(() => image2 = imageTemporary);
        Navigator.pop(context);
      }
    } on PlatformException {
      setState(() {
        ScaffoldMessenger.of(context).showSnackBar(accessDenied);
      });
    }
  }

  Future pickImage5(
    ImageSource source,
  ) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) {
        Navigator.pop(context);
        return;
      } else {
        final imageTemporary = File(image.path);
        setState(() => image5 = imageTemporary);
        Navigator.pop(context);
      }
    } on PlatformException {
      setState(() {
        ScaffoldMessenger.of(context).showSnackBar(accessDenied);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            'Flight, Accomodation, tour and Match tickets',
            style: kBoldTextStyleBlack,
          ),
        ),
        addVerticalSpacing(20),
        Flexible(
          child: Stepper(
              currentStep: currentStep,
              onStepContinue: () {
                if (currentStep == 1) {
                  print(getTotalAmount());
                  print(getpackageType());
                  print(address);
                  print(phoneNumber1);
                  print(phoneNumber2);
                  print(phoneNumber3);
                  print(phoneNumber4);
                  print(phoneNumber5);
                  print(email);
                  Navigator.pushReplacementNamed(
                      context, RequestSubmittedPage.id);
                  // send data to firebase functionality will be implemented here
                } else {
                  setState(() => currentStep += 1);
                }
              },
              onStepCancel: currentStep == 0
                  ? null
                  : () {
                      setState(() => currentStep -= 1);
                    },
              type: StepperType.horizontal,
              steps: [
                Step(
                    state: currentStep > 0
                        ? StepState.complete
                        : StepState.editing,
                    isActive: currentStep >= 0,
                    title: const Text('Registration'),
                    content: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Visa (FanID) Registration'),
                          addVerticalSpacing(20),
                          const Text(
                              """You will need a visa(fanID) in order to acquire your flight ticket. Please note that your visa comes in the form of a fanID and is only valid before and during the 2022 world cup at Qatar."""),
                          addVerticalSpacing(80),
                          const Text(
                              'To begin registration  of your fanID you will first need to provide your international passport'),
                          addVerticalSpacing(20),
                          Center(
                            child: Column(
                              children: [
                                image1 != null
                                    ? Image.file(
                                        image1!,
                                        width: 200,
                                        height: 200,
                                      )
                                    : Container(
                                        color: Colors.grey,
                                        height: 50,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Center(
                                            child: Text(
                                          'International passport1',
                                          style: kBoldTextStyleBlack.copyWith(
                                              fontSize: 15),
                                        )),
                                      ),
                                ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                              title: const Text(
                                                  'Choose upload method'),
                                              actions: [
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child:
                                                        const Text('Dismiss'))
                                              ],
                                              content: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  addVerticalSpacing(10),
                                                  SizedBox(
                                                      height: 50,
                                                      width: double.infinity,
                                                      child: GestureDetector(
                                                          onTap: () {
                                                            pickImage1(
                                                                ImageSource
                                                                    .camera);
                                                          },
                                                          child: const Text(
                                                              'Take a photo'))),
                                                  SizedBox(
                                                      height: 50,
                                                      width: double.infinity,
                                                      child: GestureDetector(
                                                          onTap: () {
                                                            pickImage1(
                                                                ImageSource
                                                                    .gallery);
                                                          },
                                                          child: const Text(
                                                              'Choose a photo'))),
                                                ],
                                              ),
                                            ));
                                    // pickImage(ImageSource.gallery);
                                  },
                                  child: const Text('Upload'),
                                ),
                              ],
                            ),
                          ),
                          Center(
                            child: Column(
                              children: [
                                image2 != null
                                    ? Image.file(
                                        image2!,
                                        width: 200,
                                        height: 200,
                                      )
                                    : Container(
                                        color: Colors.grey,
                                        height: 50,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Center(
                                            child: Text(
                                          'International passport2',
                                          style: kBoldTextStyleBlack.copyWith(
                                              fontSize: 15),
                                        )),
                                      ),
                                ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                              title: const Text(
                                                  'Choose upload method'),
                                              actions: [
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child:
                                                        const Text('Dismiss'))
                                              ],
                                              content: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  addVerticalSpacing(10),
                                                  SizedBox(
                                                      height: 50,
                                                      width: double.infinity,
                                                      child: GestureDetector(
                                                          onTap: () {
                                                            pickImage2(
                                                                ImageSource
                                                                    .camera);
                                                          },
                                                          child: const Text(
                                                              'Take a photo'))),
                                                  SizedBox(
                                                      height: 50,
                                                      width: double.infinity,
                                                      child: GestureDetector(
                                                          onTap: () {
                                                            pickImage2(
                                                                ImageSource
                                                                    .gallery);
                                                          },
                                                          child: const Text(
                                                              'Choose a photo'))),
                                                ],
                                              ),
                                            ));
                                    // pickImage(ImageSource.gallery);
                                  },
                                  child: const Text('Upload'),
                                ),
                              ],
                            ),
                          ),
                          Center(
                            child: Column(
                              children: [
                                image3 != null
                                    ? Image.file(
                                        image3!,
                                        width: 200,
                                        height: 200,
                                      )
                                    : Container(
                                        color: Colors.grey,
                                        height: 50,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Center(
                                            child: Text(
                                          'International passport3',
                                          style: kBoldTextStyleBlack.copyWith(
                                              fontSize: 15),
                                        )),
                                      ),
                                ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                              title: const Text(
                                                  'Choose upload method'),
                                              actions: [
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child:
                                                        const Text('Dismiss'))
                                              ],
                                              content: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  addVerticalSpacing(10),
                                                  SizedBox(
                                                      height: 50,
                                                      width: double.infinity,
                                                      child: GestureDetector(
                                                          onTap: () {
                                                            pickImage3(
                                                                ImageSource
                                                                    .camera);
                                                          },
                                                          child: const Text(
                                                              'Take a photo'))),
                                                  SizedBox(
                                                      height: 50,
                                                      width: double.infinity,
                                                      child: GestureDetector(
                                                          onTap: () {
                                                            pickImage3(
                                                                ImageSource
                                                                    .gallery);
                                                          },
                                                          child: const Text(
                                                              'Choose a photo'))),
                                                ],
                                              ),
                                            ));
                                    // pickImage(ImageSource.gallery);
                                  },
                                  child: const Text('Upload'),
                                ),
                              ],
                            ),
                          ),
                          Center(
                            child: Column(
                              children: [
                                image4 != null
                                    ? Image.file(
                                        image4!,
                                        width: 200,
                                        height: 200,
                                      )
                                    : Container(
                                        color: Colors.grey,
                                        height: 50,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Center(
                                            child: Text(
                                          'International passport4',
                                          style: kBoldTextStyleBlack.copyWith(
                                              fontSize: 15),
                                        )),
                                      ),
                                ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                              title: const Text(
                                                  'Choose upload method'),
                                              actions: [
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child:
                                                        const Text('Dismiss'))
                                              ],
                                              content: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  addVerticalSpacing(10),
                                                  SizedBox(
                                                      height: 50,
                                                      width: double.infinity,
                                                      child: GestureDetector(
                                                          onTap: () {
                                                            pickImage4(
                                                                ImageSource
                                                                    .camera);
                                                          },
                                                          child: const Text(
                                                              'Take a photo'))),
                                                  SizedBox(
                                                      height: 50,
                                                      width: double.infinity,
                                                      child: GestureDetector(
                                                          onTap: () {
                                                            pickImage4(
                                                                ImageSource
                                                                    .gallery);
                                                          },
                                                          child: const Text(
                                                              'Choose a photo'))),
                                                ],
                                              ),
                                            ));
                                    // pickImage(ImageSource.gallery);
                                  },
                                  child: const Text('Upload'),
                                ),
                              ],
                            ),
                          ),
                          Center(
                            child: Column(
                              children: [
                                image5 != null
                                    ? Image.file(
                                        image5!,
                                        width: 200,
                                        height: 200,
                                      )
                                    : Container(
                                        color: Colors.grey,
                                        height: 50,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Center(
                                            child: Text(
                                          'International passport5',
                                          style: kBoldTextStyleBlack.copyWith(
                                              fontSize: 15),
                                        )),
                                      ),
                                ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                              title: const Text(
                                                  'Choose upload method'),
                                              actions: [
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child:
                                                        const Text('Dismiss'))
                                              ],
                                              content: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  addVerticalSpacing(10),
                                                  SizedBox(
                                                      height: 50,
                                                      width: double.infinity,
                                                      child: GestureDetector(
                                                          onTap: () {
                                                            pickImage5(
                                                                ImageSource
                                                                    .camera);
                                                          },
                                                          child: const Text(
                                                              'Take a photo'))),
                                                  SizedBox(
                                                      height: 50,
                                                      width: double.infinity,
                                                      child: GestureDetector(
                                                          onTap: () {
                                                            pickImage5(
                                                                ImageSource
                                                                    .gallery);
                                                          },
                                                          child: const Text(
                                                              'Choose a photo'))),
                                                ],
                                              ),
                                            ));
                                    // pickImage(ImageSource.gallery);
                                  },
                                  child: const Text('Upload'),
                                ),
                              ],
                            ),
                          ),
                          addVerticalSpacing(40),
                          Card(
                            borderOnForeground: true,
                            color: Colors.white,
                            elevation: 3.0,
                            shadowColor: Colors.black,
                            margin: const EdgeInsets.all(10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: const Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text(
                                  """A softcopy of your fanID would be sent to you via your provided email address, within three busness days, while the hardcopy of your fanID would be given to you at the airport, at least 2 hours to your take-off timeNote: The softcopy of your fanID can perform all functions that the hardcopy can perform."""),
                            ),
                          ),
                          addVerticalSpacing(30),
                          Center(
                            child: const Text(
                              'Enter mobile numbers',
                            ),
                          ),
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
                                        '+971',
                                        '+255'
                                      ],
                                      //  countryFilter: ['IT', 'FR'],
                                      showFlagDialog: false,
                                      //Get the country information relevant to the initial selection
                                      onInit: (code) {}),
                                ),
                              ),
                              addVerticalSpacing(10),
                              Expanded(
                                flex: 2,
                                child: TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: ValidationBuilder()
                                      .minLength(10)
                                      .maxLength(15)
                                      .build(),
                                  keyboardType: TextInputType.number,
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.digitsOnly
                                  ], // Only numbers can be entered
                                  onChanged: (value) {
                                    phoneNumber1 = value;
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
                                        '+971',
                                        '+255'
                                      ],
                                      //  countryFilter: ['IT', 'FR'],
                                      showFlagDialog: false,
                                      //Get the country information relevant to the initial selection
                                      onInit: (code) {}),
                                ),
                              ),
                              addVerticalSpacing(10),
                              Expanded(
                                flex: 2,
                                child: TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: ValidationBuilder()
                                      .minLength(10)
                                      .maxLength(15)
                                      .build(),
                                  keyboardType: TextInputType.number,
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.digitsOnly
                                  ], // Only numbers can be entered
                                  onChanged: (value) {
                                    phoneNumber2 = value;
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
                                        '+971',
                                        '+255'
                                      ],
                                      //  countryFilter: ['IT', 'FR'],
                                      showFlagDialog: false,
                                      //Get the country information relevant to the initial selection
                                      onInit: (code) {}),
                                ),
                              ),
                              addVerticalSpacing(10),
                              Expanded(
                                flex: 2,
                                child: TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: ValidationBuilder()
                                      .minLength(10)
                                      .maxLength(15)
                                      .build(),
                                  keyboardType: TextInputType.number,
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.digitsOnly
                                  ], // Only numbers can be entered
                                  onChanged: (value) {
                                    phoneNumber3 = value;
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
                                        '+971',
                                        '+255'
                                      ],
                                      //  countryFilter: ['IT', 'FR'],
                                      showFlagDialog: false,
                                      //Get the country information relevant to the initial selection
                                      onInit: (code) {}),
                                ),
                              ),
                              addVerticalSpacing(10),
                              Expanded(
                                flex: 2,
                                child: TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: ValidationBuilder()
                                      .minLength(10)
                                      .maxLength(15)
                                      .build(),
                                  keyboardType: TextInputType.number,
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.digitsOnly
                                  ], // Only numbers can be entered
                                  onChanged: (value) {
                                    phoneNumber4 = value;
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
                                        '+971',
                                        '+255'
                                      ],
                                      //  countryFilter: ['IT', 'FR'],
                                      showFlagDialog: false,
                                      //Get the country information relevant to the initial selection
                                      onInit: (code) {}),
                                ),
                              ),
                              addVerticalSpacing(10),
                              Expanded(
                                flex: 2,
                                child: TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: ValidationBuilder()
                                      .minLength(10)
                                      .maxLength(15)
                                      .build(),
                                  keyboardType: TextInputType.number,
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.digitsOnly
                                  ], // Only numbers can be entered
                                  onChanged: (value) {
                                    phoneNumber5 = value;
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
                          addVerticalSpacing(30),
                          Column(
                            children: [
                              const Text('Enter office/Home address'),
                              addVerticalSpacing(30),
                              TextFormField(
                                controller: addressController,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
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
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
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
                              addVerticalSpacing(30),
                              RadioListTile<int>(
                                groupValue: radiochoice,
                                value: radiovalue = 1,
                                title: const Text('Regular'),
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
                                title: const Text('V.I.P'),
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
                              addVerticalSpacing(20),
                              radiochoice == 1
                                  ? Table(
                                      children: [
                                        TableRow(children: [
                                          Container(
                                              padding: const EdgeInsets.only(
                                                  bottom: 10),
                                              child: const Text('Flight:')),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: const Text('Economy class'),
                                          )
                                        ]),
                                        TableRow(children: [
                                          const Text('Accommodation:'),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: const Text(
                                                'A nice apartment (2 persons per room)'),
                                          )
                                        ]),
                                        TableRow(children: [
                                          const Text('Feeding:'),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child:
                                                const Text('Breakfast Daily'),
                                          )
                                        ]),
                                        TableRow(children: [
                                          const Text('Tour:'),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: const Text(
                                                'A One week tour within Doha, Qatar'),
                                          )
                                        ]),
                                        TableRow(children: [
                                          const Text('Airport:'),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: const Text(
                                                'Lagos international airport, Lagos, Nigeria.'),
                                          )
                                        ]),
                                        TableRow(children: [
                                          const Text('Take-Off Date:'),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: const Text(
                                                '6th, December, 2022'),
                                          )
                                        ]),
                                        TableRow(children: [
                                          const Text('Return date:'),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: const Text(
                                                '20th, December, 2022'),
                                          )
                                        ]),
                                        TableRow(children: [
                                          const Text('Take-off time:'),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: const Text(
                                                'Would be communicated to you few days to the take-off date'),
                                          )
                                        ]),
                                        TableRow(children: [
                                          const Text(''),
                                          Container(
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.grey)),
                                            height: 50,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(3.0),
                                              child: Column(
                                                children: [
                                                  const Text('Price'),
                                                  addVerticalSpacing(10),
                                                  const Text('NGN 4,500,000'),
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
                                              padding: const EdgeInsets.only(
                                                  bottom: 10),
                                              child: const Text('Flight:')),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: const Text('First class'),
                                          )
                                        ]),
                                        TableRow(children: [
                                          const Text('Accommodation:'),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: const Text(
                                                'A nice apartment (1 person per room)'),
                                          )
                                        ]),
                                        TableRow(children: [
                                          const Text('Feeding:'),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: const Text(
                                                'Breakfast and Dinner Daily'),
                                          )
                                        ]),
                                        TableRow(children: [
                                          const Text('Tour:'),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: const Text(
                                                'A One week tour within Doha, Qatar'),
                                          )
                                        ]),
                                        TableRow(children: [
                                          const Text('Airport:'),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: const Text(
                                                'Lagos international airport, Lagos, Nigeria.'),
                                          )
                                        ]),
                                        TableRow(children: [
                                          const Text('Take-Off Date:'),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: const Text(
                                                '6th, December, 2022'),
                                          )
                                        ]),
                                        TableRow(children: [
                                          const Text('Return date:'),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: const Text(
                                                '20th, December, 2022'),
                                          )
                                        ]),
                                        TableRow(children: [
                                          const Text('Take-off time:'),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: const Text(
                                                'Would be communicated to you few days to the take-off date'),
                                          )
                                        ]),
                                        TableRow(children: [
                                          const Text(''),
                                          Container(
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.grey)),
                                            height: 50,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(3.0),
                                              child: Column(
                                                children: [
                                                  const Text('Price'),
                                                  addVerticalSpacing(10),
                                                  const Text('NGN 12,000,000'),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ]),
                                      ],
                                    ),
                            ],
                          )
                        ],
                      ),
                    )),
                Step(
                  state:
                      currentStep > 1 ? StepState.complete : StepState.editing,
                  isActive: currentStep >= 1,
                  title: const Text('Summary'),
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Summary'),
                      addVerticalSpacing(40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Category :'),
                          Text('Multiple Individuals(5)'),
                        ],
                      ),
                      addVerticalSpacing(40),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)),
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: image1 != null
                              ? Image.file(
                                  image1!,
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
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)),
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: image2 != null
                              ? Image.file(
                                  image2!,
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
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)),
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: image3 != null
                              ? Image.file(
                                  image3!,
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
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)),
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: image4 != null
                              ? Image.file(
                                  image4!,
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
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)),
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: image5 != null
                              ? Image.file(
                                  image5!,
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
                      addVerticalSpacing(30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Mobile number 1:'),
                          Text('$phoneNumber1'),
                        ],
                      ),
                      addVerticalSpacing(5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Mobile number 2:'),
                          Text('$phoneNumber2'),
                        ],
                      ),
                      addVerticalSpacing(5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Mobile number 3:'),
                          Text('$phoneNumber3'),
                        ],
                      ),
                      addVerticalSpacing(5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Mobile number 4:'),
                          Text('$phoneNumber4'),
                        ],
                      ),
                      addVerticalSpacing(5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Mobile number 4:'),
                          Text('$phoneNumber5'),
                        ],
                      ),
                      addVerticalSpacing(30),
                      radiochoice == 1
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Package type :'),
                                Text('Regular'),
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Package type :'),
                                Text('VIP'),
                              ],
                            ),
                      addVerticalSpacing(30),
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
                                addVerticalSpacing(30),
                                const Center(child: Text('Usman Taofik Yasin')),
                                addVerticalSpacing(30),
                                Center(
                                    child: Text(
                                  'STATSPIZZA CONSULTS LIMITED',
                                  style: kBoldTextStyleBlack.copyWith(
                                      fontSize: 17),
                                )),
                                addVerticalSpacing(30),
                                const Text(
                                    'Tour guide during the FIFA world cup in Russia'),
                                addVerticalSpacing(30),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
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
                                              text:
                                                  TextSpan(children: <TextSpan>[
                                                TextSpan(
                                                    text:
                                                        'Book a flight to Lagos',
                                                    style: linkStyle.copyWith(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    recognizer:
                                                        TapGestureRecognizer()
                                                          ..onTap = () {}),
                                              ]),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                addVerticalSpacing(50),
                                radiochoice == 1
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text('Price: '),
                                          Text('3,000,000'),
                                        ],
                                      )
                                    : Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text('Price: '),
                                          Text('8,000,000'),
                                        ],
                                      ),
                                addVerticalSpacing(50),
                                const Text(
                                    'Your request shall be reviewed within the next 24 working hours. You can only make payment after approval of your request '),
                                addVerticalSpacing(50),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ]),
        ),
      ],
    );
  }
}
