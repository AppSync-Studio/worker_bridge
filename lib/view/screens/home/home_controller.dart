import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';
import 'package:worker_bridge/utils/app_utils/app_image/app_image.dart';
import 'package:worker_bridge/view/screens/home/home_model.dart';

class HomeController extends GetxController{

  HomeController();

  final CarouselController carouselController = CarouselController();
  int currentIndex = 1;

  HomeModel homeModel = HomeModel();

  List<ServiceBanner> serviceBannerList = [
    ServiceBanner(imageSrc: AppImage.firstBannerImage),
    ServiceBanner(imageSrc: AppImage.secondBannerImage),
    ServiceBanner(imageSrc: AppImage.thirdBannerImage),
  ];

  void setCurrentIndex(int index) {
    currentIndex = index;
    update();
  }
}