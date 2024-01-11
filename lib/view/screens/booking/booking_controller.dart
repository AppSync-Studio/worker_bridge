import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingController extends GetxController{

  BookingController();

  final PageController pageController = PageController();

  List<String> statusList = ["All", "Active", "Completed", "Cancelled"];
  int selectedStatus = 0;

  changeSelectedStatus(int index){
    selectedStatus = index;
    pageController.jumpToPage(index);
    update();
  }

  changePage(int pageIndex){
    selectedStatus = pageIndex;
    update();
  }
}