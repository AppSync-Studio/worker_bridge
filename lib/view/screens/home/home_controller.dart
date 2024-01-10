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

  List<HouseCleaning> houseCleaningList = [
    HouseCleaning(
      imageSrc: AppImage.fullHomeDeepCleanImage,
      serviceTitle: "Full Home Deep Cleaning",
      serviceRating: 4.5,
      servicePrice: 120.00
    ),
    HouseCleaning(
      imageSrc: AppImage.kitchenCleaningImage,
      serviceTitle: "Kitchen Deep Cleaning",
      serviceRating: 4.9,
      servicePrice: 35.00
    ),
    HouseCleaning(
      imageSrc: AppImage.bathroomCleaningImage,
      serviceTitle: "Bathroom Deep Cleaning",
      serviceRating: 5.0,
      servicePrice: 50.00
    ),
    HouseCleaning(
      imageSrc: AppImage.floorCleaningImage,
      serviceTitle: "Floor Deep Cleaning",
      serviceRating: 4.2,
      servicePrice: 25.50
    )
  ];

  List<AcRepair> acRepairList = [
    AcRepair(
        imageSrc: AppImage.acBasicServiceImage,
        serviceTitle: "AC Basic Service",
        serviceRating: 4.3,
        servicePrice: 30.50
    ),
    AcRepair(
        imageSrc: AppImage.acCapacitorReplaceImage,
        serviceTitle: "AC Capacitor Replacement",
        serviceRating: 4.7,
        servicePrice: 40.00
    ),
    AcRepair(
        imageSrc: AppImage.acGasChargeImage,
        serviceTitle: "AC Gas Charge",
        serviceRating: 4.1,
        servicePrice: 25.00
    ),
    AcRepair(
        imageSrc: AppImage.acInstallationImage,
        serviceTitle: "AC Installation & Uninstallation",
        serviceRating: 4.8,
        servicePrice: 35.50
    )
  ];

  void setCurrentIndex(int index) {
    currentIndex = index;
    update();
  }
}