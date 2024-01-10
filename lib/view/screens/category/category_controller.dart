import 'package:get/get.dart';
import 'package:worker_bridge/utils/app_utils/app_icon/app_icons.dart';
import 'package:worker_bridge/view/screens/category/category_model.dart';

class CategoryController extends GetxController{

  CategoryController();

  List<CategoryModel> categoryList = [
    CategoryModel(iconSrc: AppIcons.houseCleaningIcon, categoryTitle: "House Cleaning"),
    CategoryModel(iconSrc: AppIcons.acMaintenanceIcon, categoryTitle: "AC Repair & Maintenance"),
    CategoryModel(iconSrc: AppIcons.carWashIcon, categoryTitle: "Car Wash & Service"),
    CategoryModel(iconSrc: AppIcons.paintingIcon, categoryTitle: "Painting & Renovation"),
    CategoryModel(iconSrc: AppIcons.plumbingIcon, categoryTitle: "Plumbing"),
    CategoryModel(iconSrc: AppIcons.repairingIcon, categoryTitle: "Electronics & Gadgets Repairing"),
    CategoryModel(iconSrc: AppIcons.shiftingIcon, categoryTitle: "Shifting"),
    CategoryModel(iconSrc: AppIcons.washingIcon, categoryTitle: "Clothes Washing"),
    CategoryModel(iconSrc: AppIcons.farmerIcon, categoryTitle: "Gardening"),
    CategoryModel(iconSrc: AppIcons.ironingIcon, categoryTitle: "Ironing"),
  ];
}