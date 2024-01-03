import 'dart:async';

import 'package:get/get.dart';
import 'package:worker_bridge/route/app_route.dart';
import 'package:worker_bridge/utils/device_utils/app_device_utils.dart';

class SplashController extends GetxController{

  SplashController();

  void initialState(){

    AppDeviceUtils.splashUtils();
    gotoNextScreen();
  }

  void gotoNextScreen() {
    Timer(const Duration(seconds: 3), () => Get.offAndToNamed(AppRoute.onboardScreen));
  }
}