import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_tourism/Screens/Onboarding/loginpage.dart';
import 'package:one_go_tourism/Screens/Onboarding/registration_page.dart';
import 'package:one_go_tourism/Screens/Onboarding/splashscreen.dart';
import 'package:one_go_tourism/Screens/PaymentPages/payment_failed.dart';
import 'package:one_go_tourism/Screens/PaymentPages/payment_page.dart';
import 'package:one_go_tourism/Screens/PaymentPages/payment_success.dart';
import 'package:one_go_tourism/Screens/TourDetailsPages/tour_details_couple.dart';
import 'package:one_go_tourism/Screens/TourDetailsPages/tour_details_single.dart';
import 'package:one_go_tourism/Screens/home_screen.dart';
import 'package:one_go_tourism/Screens/introduction_screen.dart';
import 'package:one_go_tourism/Screens/notifications.dart';
import 'package:one_go_tourism/Screens/qatar.dart';
import 'package:one_go_tourism/Screens/request_submitted_page.dart';
import 'package:one_go_tourism/Screens/select_category.dart';
import 'package:one_go_tourism/Screens/tour_agent_details.dart';
import 'package:one_go_tourism/Screens/tour_agent_page.dart';
import 'package:one_go_tourism/Screens/user_profilePage.dart';
import 'package:one_go_tourism/models/bucketList_model.dart';
import 'package:one_go_tourism/models/user_datamodel.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screens/BucketlistPages/bucket_list.dart';
import 'Screens/BucketlistPages/create_bucket_listpage.dart';
import 'Screens/TourDetailsPages/3_people_multiple.dart';
import 'Screens/TourDetailsPages/4_people_multiple.dart';
import 'Screens/TourDetailsPages/5_people_multiple.dart';
import 'Screens/TourDetailsPages/tour_details_multiple.dart';

int? initScreen;

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.white60));
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = preferences.getInt('initScreen');
  await preferences.setInt('initScreen', 1);
  runApp(
    const Myapp(),
  );
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserData()),
        ChangeNotifierProvider(create: (context) => UpcomingTour()),
      ],
      child: ScreenUtilInit(
          designSize: Size(414, 896),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (child) {
            return MaterialApp(
              theme: ThemeData.light(),
              routes: {
                LoginPage.id: (context) => LoginPage(),
                Splash.id: (context) => const Splash(),
                RegistrationPage.id: (context) => const RegistrationPage(),
                Home.id: (context) => const Home(),
                OnboardingPage.id: (context) => const OnboardingPage(),
                Qatar.id: (context) => const Qatar(),
                NotificationsPage.id: (context) => const NotificationsPage(),
                TourAgentPage.id: (context) => TourAgentPage(),
                TourDetailsSingle.id: (context) => const TourDetailsPage(),
                BucketList.id: (context) => const BucketList(),
                SelectCategory.id: (context) => SelectCategory(),
                CreateBucketListPage.id: (context) =>
                    const CreateBucketListPage(),
                TourDetailsCouple.id: (context) => const TourDetailsCouple(),
                TourDetailsMultiple.id: (context) =>
                    const TourDetailsMultiple(),
                ThreePeoplePage.id: (context) => const ThreePeoplePage(),
                RequestSubmittedPage.id: (context) =>
                    const RequestSubmittedPage(),
                FourPeoplePage.id: (context) => const FourPeoplePage(),
                FivePeoplePage.id: (context) => const FivePeoplePage(),
                PaymentPage.id: (context) => const PaymentPage(),
                PaymentSuccess.id: (context) => PaymentSuccess(),
                PaymentFailed.id: (context) => PaymentFailed(),
                UserProfilePage.id: (context) => UserProfilePage(),
                TourAgentDetails.id: (context) => TourAgentDetails(),
                MainScreen.id: (context) => const MainScreen(),
                SuccessRegistration.id: (context) => const SuccessRegistration()
              },
              debugShowCheckedModeBanner: false,
              initialRoute: Splash.id,
            );
          }),
    );
  }
}
