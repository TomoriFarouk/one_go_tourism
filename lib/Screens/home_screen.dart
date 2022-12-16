import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_validator/form_validator.dart';
import 'package:one_go_tourism/Screens/BucketlistPages/bucket_list.dart';
import 'package:one_go_tourism/Screens/bookings/bookings_screen.dart';
import 'package:one_go_tourism/Screens/notifications.dart';
import 'package:one_go_tourism/Screens/qatar.dart';
import 'package:one_go_tourism/Screens/request_tour/request_tour_screen.dart';
import 'package:one_go_tourism/Screens/user_profilePage.dart';
import 'package:one_go_tourism/View%20Templates/carousel_slider.dart';
import 'package:one_go_tourism/custom_widgets/constants.dart';
import 'package:one_go_tourism/custom_widgets/reusable_button.dart';
import 'package:one_go_tourism/models/bucketList_model.dart';
import 'package:one_go_tourism/models/carousel_view_model.dart';
import 'package:one_go_tourism/models/request_tour_mopdel.dart';
import 'package:one_go_tourism/models/user_datamodel.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  static const String id = 'Mainscreen';

  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageindex = 0;

  final pages = [
    const Home(),
    const BookingScreen(),
    const BucketList(),
    UserProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 62,
        color: Colors.white,
      //  padding: const EdgeInsets.all(5),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
            
              children: [
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageindex = 0;
                    });
                  },
                  icon: pageindex == 0
                      ? const Icon(
                          Icons.home_filled,
                          color: Colors.blue,
                          size: 20,
                        )
                      : const Icon(
                          Icons.home_outlined,
                          color: Colors.grey,
                          size: 20,
                        ),
                ),
                Text('Home',style: 
                TextStyle(
                  fontSize:12.sp 
                ),),
              ],
            ),
           
            Column(
            
              children: [
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageindex = 1;
                    });
                  },
                  icon: pageindex == 1
                      ? const Icon(
                          Icons.menu_book,
                          color: Colors.blue,
                          size: 20,
                        )
                      : const Icon(
                          Icons.menu_book_outlined,
                          color: Colors.grey,
                          size: 20,
                        ),
                ),
              Text('Bookings',
                 style: TextStyle(
                  fontSize:12.sp 
                ),),
              ],
            ),
             Column(
            
              children: [
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageindex = 2;
                    });
                  },
                  icon: pageindex == 2
                      ? const Icon(
                          Icons.list,
                          color: Colors.blue,
                          size: 20,
                        )
                      : const Icon(
                          Icons.list_outlined,
                          color: Colors.grey,
                          size: 20,
                        ),
                ),
                Text('Bucketlist',
               style: TextStyle(
                  fontSize:12.sp 
                ),),
              ],
            ),
            Column(
           
              children: [
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageindex = 3;
                    });
                  },
                  icon: pageindex == 3
                      ? const Icon(
                          Icons.circle_notifications,
                          color: Colors.blue,
                          size: 20,
                        )
                      : const Icon(
                          Icons.person_add_alt_1_rounded,
                          color: Colors.grey,
                          size: 20 ,
                        ),
                ),
           Text('Profile',
            style: TextStyle(
                  fontSize:12.sp 
                ),),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: pages[pageindex],
    );
  }
}

class Home extends StatefulWidget {
  static const String id = 'Homepage';

  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isUserVerified = false;
  UpcomingTour upcomingTour = UpcomingTour();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List? userDataList = Provider.of<UserData>(context).userDataList;

    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Column(
          children: [
            // Align(
            //   alignment: Alignment.topLeft,
            //   child: Container(
            //     height: 23.h,
            //     width: 71.w,
            //     child: Image.asset('assets/explorelogo.jpg'),
            //   ),
            // ),
            Flexible(
              child: ListView(
                // Ui to show verification status and corresponding modal
                children: [
                  // addVerticalSpacing(20),
                  // isUserVerified
                  //     ? Container(
                  //         decoration: BoxDecoration(
                  //           color: Colors.white,
                  //           border: Border.all(color: Colors.grey),
                  //           borderRadius: BorderRadius.circular(10),
                  //         ),
                  //         width: MediaQuery.of(context).size.width,
                  //         child: Padding(
                  //           padding: const EdgeInsets.all(8.0),
                  //           child: Column(
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: [
                  //               const Text(
                  //                   'Package: Qatar FIFA world cup Tour'),
                  //               addVerticalSpacing(10),
                  //               Row(
                  //                 children: [
                  //                   const Text('Status: Appproved'),
                  //                   addHorizontalSpacing(10),
                  //                   const Icon(
                  //                     Icons.check_circle,
                  //                     color: Colors.green,
                  //                   ),
                  //                 ],
                  //               ),
                  //               addVerticalSpacing(10),
                  //               ReusableButton(const Text('Make Payment'), () {
                  //                 Navigator.pushNamed(context, PaymentPage.id);
                  //               }),
                  //             ],
                  //           ),
                  //         ),
                  //       )
                  //     : Container(
                  //         width: MediaQuery.of(context).size.width,
                  //         decoration: BoxDecoration(
                  //           color: Colors.grey,
                  //           borderRadius: BorderRadius.circular(10),
                  //         ),
                  //         child: Padding(
                  //           padding: const EdgeInsets.all(8.0),
                  //           child: Column(
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: [
                  //               const Text('Package: Qatar FIFA WorldCUP Tour'),
                  //               addVerticalSpacing(10),
                  //               const Text('Status: Pending Approval...'),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  addVerticalSpacing(20),
                  Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6), BlendMode.dstATop),
            image: AssetImage(
              'assets/hm3.jpg',
            ),
            fit: BoxFit.fill,
          )),
          child: Padding(
            padding: EdgeInsets.only(top:15.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               Container(
                height: 71.h,
                width: 81.w,
                decoration: BoxDecoration(
            image: DecorationImage(
            
              image: AssetImage(
                'assets/Vector.png',
              ),
              fit: BoxFit.fill,
            )),
               ),
                Column(
      crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                     Text(
                        'The Qatar experience',
                        style: kBoldTextStyleWhite,
                      ),
                      addVerticalSpacing(15),
                         Text(
                        'Soak up the beauty of Qatar,\n while attending the world cup \n event',
                        style:  TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w500,color: Colors.white),
                        textAlign: TextAlign.left,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                  ],
                ),
                Container(
                    height: 30.h,
                width: 100.w,
                  child: ReusableButton(
                  Text('Book'), () {
                      // Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: (context) => Checkout()));
                    }),
                ),
              ],
            ),
          ),
     
    ),
    addVerticalSpacing(27),
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Ongoing tours',
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.notification_important_outlined,
                        color: Colors.grey,
                      )
                    ],
                  ),
                  addVerticalSpacing(30),
                  CarouselSlider(
                    options: CarouselOptions(
                      //height: MediaQuery.of(context).size.height,
                      //the more you reduce it the taller the carousel grows
                      // viewportFraction: 2.0,
                      height: 300.h,
                      //aspectRatio: 1.0,
                      enlargeCenterPage: true,
                      enlargeStrategy: CenterPageEnlargeStrategy
                          .scale, // to reduce the space between the carousel
                      // enableInfiniteScroll: false,
                      // initialPage: 2,
                      autoPlay: true,
                    ),
                    items: Carousel.carousel
                        .map((x) => HomeCarousel(splash: x))
                        .toList(),
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.name,
                    validator: ValidationBuilder().minLength(2).build(),
                    onChanged: (value) {
                      //firstname = value;
                    },
                    
                    decoration: const InputDecoration(
                      
                      fillColor: Color(0xffD9D9D9),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      hintText: 'Choose your destination ...',
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                    ),
                  ),
                  addVerticalSpacing(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Explore Africa'),
                       GestureDetector(
                        onTap: (){
                           Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>RequestTourScreen(requestTour: RequestTour.requestTour.toList()) ));
              },
                        
                         child: Text(
                                     'See all',
                                     style: TextStyle(
                                         fontSize: 16.sp,
                                         fontWeight: FontWeight.w500,
                                         color: Colors.blue),
                                   ),
                       ),
                    ],
                  ),
                  addVerticalSpacing(20),
                  SizedBox(
                    height: 200.h,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      shrinkWrap: true,
                      primary: false,
                      scrollDirection: Axis.horizontal,
                      children: upcomingTour.getUpcomingTourOnHome(context),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
