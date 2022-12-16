import 'package:flutter/material.dart';
import 'package:one_go_tourism/custom_widgets/constants.dart';

class TabAboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Enjoy an awesome vacation in Qatar, while attending the world cup and soaking up the beauty of QatarEnoy an awesome vacation in Qatar, while attending the world cup and soaking up the beauty of QatarEnoy an awesome vacation in Qatar, while attending the world cup and soaking up the beauty of Qatar',
          style: kBlackText.copyWith(fontSize: 17),
        ),
      ),
    );
  }
}
