class HomeModel{

  List<ServiceBanner>? serviceBanner;
  List<Categories>? categories;

  HomeModel({this.serviceBanner, this.categories});
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