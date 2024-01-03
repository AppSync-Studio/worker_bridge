import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:worker_bridge/route/app_route.dart';
import 'package:worker_bridge/utils/app_utils/app_image/app_image.dart';
import 'package:worker_bridge/view/screens/onboard/onboard_model.dart';

class OnboardController extends GetxController{

  OnboardController();

  List<OnboardModel> onboardDataList = [
    OnboardModel(
      imageSrc: AppImage.firstOnboardImage,
      onboardTitle: "First Title",
      onboardSubTitle: "First Onboard Subtitle"
    ),
    OnboardModel(
      imageSrc: AppImage.secondOnboardImage,
      onboardTitle: "Second Title",
      onboardSubTitle: "Second Onboard Subtitle"
    ),
    OnboardModel(
      imageSrc: AppImage.thirdOnboardImage,
      onboardTitle: "Third Title",
      onboardSubTitle: "Third Onboard Subtitle"
    ),
  ];

  final PageController pageController = PageController();
  int currentIndex = 0;

  // change page_view pages
  void changePages(int index) {
    currentIndex = index;
    update();
  }

  // change pages through dot_indicators
  void changeIndicators(int index){
    currentIndex = index;
    pageController.jumpToPage(index);
    update();
  }

  // change pages through next_button
  void nextPage() {
    if(currentIndex == 2){
      gotoNextScreen();
    }
    else{
      int page = currentIndex + 1;
      pageController.jumpToPage(page);
    }

    update();
  }

  // next screen
  void gotoNextScreen() {
    Get.offAndToNamed(AppRoute.signInScreen);
  }
}