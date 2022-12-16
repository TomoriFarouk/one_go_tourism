import 'package:flutter/material.dart';
import 'package:one_go_tourism/Screens/Tabpages/tab_about_page.dart';
import 'package:one_go_tourism/Screens/Tabpages/tab_gallery_page.dart';
import 'package:one_go_tourism/custom_widgets/constants.dart';

class TourAgentDetails extends StatelessWidget {
  static const String id = 'touragentdetails';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Statspizza consult portfolio',
              style: kBlackText,
            ),
            elevation: 0.0,
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            bottom: const TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(
                    text: 'About',
                  ),
                  Tab(
                    text: 'Gallery',
                  ),
                ]),
          ),
          body: TabBarView(
            children: [
              TabAboutPage(),
              TabGalleryPage(),
            ],
          ),
        ),
      ),
    );
  }
}
