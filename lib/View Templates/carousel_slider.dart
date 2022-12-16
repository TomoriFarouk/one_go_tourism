import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_tourism/View%20Templates/upcoming_tour_view.dart';
import 'package:one_go_tourism/custom_widgets/constants.dart';
import 'package:one_go_tourism/models/carousel_view_model.dart';

class HomeCarousel extends StatelessWidget {
  final Carousel splash;

  const HomeCarousel({required this.splash});
  @override
  Widget build(BuildContext context) {
    double WIDTH = MediaQuery.of(context).size.width;
    return GestureDetector(
       onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UpcomingTourView( cImage1: splash.imageUrl,
                        body: splash.body,heading: splash.name,
                       )));
              },
      child: Container(
        width: MediaQuery.of(context).size.width,
      
            child: PhysicalModel(
              
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight:  Radius.circular(30)
            ),
         
       elevation: 100,
        //shadowColor: Colors.white,
        color: Colors.transparent,
        child: Column(
          children: [
            Container(
              height: 150.h,
              decoration: BoxDecoration(
           
            color: Colors.white,
            image: DecorationImage(
              
              image: AssetImage(
                splash.imageUrl[0],
              ),
              fit: BoxFit.fill,
            )),
            ),
            Container(
              height: 90,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top:13.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                           Text(
                            splash.name,
                            style:  TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold,color: Colors.black),
                           
                          ),
                          addVerticalSpacing(15),
                          IconTheme(
                        data: IconThemeData(
                           color: Color(0xffFF9900),
                                        size: 16,
                        ),
                          child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: List.generate(5, (index) {
                                return Icon(
                                  index < 4 ? Icons.star : Icons.star_border,
                                  color: Color(0xffFF9900),
                                );
                              }),
                            ),
                        
                      ),
                      ],
                    ),
                  ),
                    Padding(
                      padding: EdgeInsets.only(top:70.h),
                      child: Text(
                            splash.price,
                            style:  TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400,color: Colors.black),
                           
                          ),
                    ),
                ],
              ),
            )
          ],
        )
      ),
      ),
    );
  }
}
