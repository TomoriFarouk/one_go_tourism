import 'package:flutter/material.dart';

class TabGalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> portfolioImagelist = [
      'assets/TourOperatorImages/toi.jpg',
      'assets/TourOperatorImages/toi1.jpg',
      'assets/TourOperatorImages/toi2.jpg',
      'assets/TourOperatorImages/toi3.jpg',
      'assets/TourOperatorImages/toi4.jpg',
      'assets/TourOperatorImages/toi5.jpg',
      'assets/TourOperatorImages/toi6.jpg',
      'assets/TourOperatorImages/toi7.jpg',
      'assets/TourOperatorImages/toi8.jpg',
      'assets/TourOperatorImages/toi9.jpg',
      'assets/TourOperatorImages/toi10.jpg',
      'assets/TourOperatorImages/toi1.jpg',
      'assets/TourOperatorImages/toi12.jpg',
      'assets/TourOperatorImages/toi13.jpg',
      'assets/TourOperatorImages/toi14.jpg',
      'assets/TourOperatorImages/toi15.jpg',
      'assets/TourOperatorImages/toi16.jpg',
      'assets/TourOperatorImages/toi17.jpg',
      'assets/TourOperatorImages/toi18.jpg',
      'assets/TourOperatorImages/toi19.jpg',
      'assets/TourOperatorImages/toi20.jpg',
      'assets/TourOperatorImages/toi21.jpg',
      'assets/TourOperatorImages/toi22.jpg',
      'assets/TourOperatorImages/toi23.jpg',
      'assets/TourOperatorImages/toi24.jpg',
      'assets/TourOperatorImages/toi25.jpg',
      'assets/TourOperatorImages/toi26.jpg',
      'assets/TourOperatorImages/toi27.jpg',
      'assets/TourOperatorImages/toi28.jpg',
      'assets/TourOperatorImages/toi29.jpg',
      'assets/TourOperatorImages/toi30.jpg',
      'assets/TourOperatorImages/toi31.jpg',
      'assets/TourOperatorImages/toi32.jpg',
    ];

    List<GestureDetector> getPortfolioImage() {
      List<GestureDetector> imagesList = [];
      for (int i = 0; i < portfolioImagelist.length; i++) {
        String imageFilepath = portfolioImagelist[i];
        var newImage = GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ImageView(portfolioImagelist[i]);
            }));
          },
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage(imageFilepath),
                fit: BoxFit.fill,
              ),
            ),
          ),
        );
        imagesList.add(newImage);
      }
      return imagesList;
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        crossAxisCount: 4,
        children: getPortfolioImage(),
      ),
    );
  }
}

class ImageView extends StatelessWidget {
  final String imagePath;
  const ImageView(this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Center(
        child: InteractiveViewer(child: Image.asset(imagePath)),
      ),
    );
  }
}
