import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';
import 'package:worker_bridge/utils/app_utils/app_icon/app_icons.dart';
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

  List<Categories> categoryList = [
    Categories(
      imageSrc: AppIcons.houseCleaningIcon,
      title: "House Cleaning"
    ),
    Categories(
      imageSrc: AppIcons.paintingIcon,
      title: "Painting & Renovation"
    ),
    Categories(
      imageSrc: AppIcons.carWashIcon,
      title: "Car Wash & Service"
    ),
    Categories(
      imageSrc: AppIcons.acMaintenanceIcon,
      title: "AC Repair & Maintenance"
    ),
    Categories(
      imageSrc: AppIcons.farmerIcon,
      title: "Gardening"
    ),
    Categories(
        imageSrc: AppIcons.ironingIcon,
        title: "Ironing"
    ),
  ];

  void setCurrentIndex(int index) {
    currentIndex = index;
    update();
  }
}