import 'package:get/get.dart';
import 'package:worker_bridge/view/screens/bottom_nav/bottom_nav_screens.dart';
import 'package:worker_bridge/view/screens/category/category_screen.dart';
import 'package:worker_bridge/view/screens/notification/notification_screen.dart';
import 'package:worker_bridge/view/screens/onboard/onboard_screen.dart';
import 'package:worker_bridge/view/screens/profile/profile_screen.dart';
import 'package:worker_bridge/view/screens/sign_in/sign_in_screen.dart';
import 'package:worker_bridge/view/screens/sign_up/sign_up_screen.dart';
import 'package:worker_bridge/view/screens/splash/splash_screen.dart';

class AppRoute{

  static const String splashScreen = "/splash_screen";
  static const String onboardScreen = "/onboardScreen";

  // TODO -> authentications
  static const String signInScreen = "/sign_in_screen";
  static const String signUpScreen = "/sign_up_screen";
  static const String phoneVerifyScreen = "/phone_verify_screen";
  static const String otpScreen = "/otp_screen";
  static const String resetPasswordScreen = "/reset_password_screen";

  static const String bottomNavScreen = "/bottom_nav_screen";

  static const String notificationScreen = "/notification_screen";

  static const String categoryScreen = "/category_screen";

  // TODO -> menu
  static const String profileScreen = "/profile_screen";

  static List<GetPage> routes = [

    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: onboardScreen, page: () => const OnboardScreen()),

    GetPage(name: signInScreen, page: () => const SignInScreen()),
    GetPage(name: signUpScreen, page: () => const SignUpScreen()),

    GetPage(name: bottomNavScreen, page: () => const BottomNavScreens()),

    GetPage(name: notificationScreen, page: () => const NotificationScreen()),

    GetPage(name: categoryScreen, page: () => const CategoryScreen()),

    // menu
    GetPage(name: profileScreen, page: () => const ProfileScreen()),
  ];
}