class HomeModel{

  List<ServiceBanner>? serviceBanner;
  List<Category>? category;

  HomeModel({this.serviceBanner, this.category});
}

class ServiceBanner{
  String? imageSrc;

  ServiceBanner({this.imageSrc});
}

class Category{

  String? imageSrc;
  String? title;

  Category({this.imageSrc, this.title});
}