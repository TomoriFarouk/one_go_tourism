import 'package:flutter/material.dart';
import 'package:one_go_tourism/custom_widgets/constants.dart';

import '../../custom_widgets/carousel_slider_widget.dart';

class PlacesInQatarView extends StatelessWidget {
  static const String id = 'LocationView';
  Widget body;
  String cImage1, cImage2, cImage3;
  String heading;
  PlacesInQatarView(
      this.cImage1, this.cImage2, this.cImage3, this.body, this.heading,
      {Key? key})
      : super(key: key);

  TextStyle boldStyle = const TextStyle(
      color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
     final List<String> image = [cImage1, cImage2, cImage3];
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.of(context).pop(),
              ),
              backgroundColor: Colors.white,
            ),
            body: Column(children: [
              Expanded(child: CarouselSliderWidget(image,'full')),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    addVerticalSpacing(50),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        heading,
                        style: kBoldTextStyleBlack,
                      ),
                    ),
                    body,
                  ],
                ),
              ),
            ])));
  }
}
