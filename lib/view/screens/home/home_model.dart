class HomeModel{

  List<ServiceBanner>? serviceBanner;
  List<Categories>? categories;
  List<HouseCleaning>? houseCleaning;

  HomeModel({this.serviceBanner, this.categories, this.houseCleaning});
}

class ServiceBanner{
  String? imageSrc;

  ServiceBanner({this.imageSrc});
}

class Categories{

  String? imageSrc;
  String? title;

  Categories({this.imageSrc, this.title});
}

class HouseCleaning{

  String imageSrc;
  String serviceTitle;
  double serviceRating;
  double servicePrice;

  HouseCleaning({required this.imageSrc, required this.serviceTitle, required this.serviceRating, required this.servicePrice});
}

class AcRepair{

  String imageSrc;
  String serviceTitle;
  double serviceRating;
  double servicePrice;

  AcRepair({required this.imageSrc, required this.serviceTitle, required this.serviceRating, required this.servicePrice});
}