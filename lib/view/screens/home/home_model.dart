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