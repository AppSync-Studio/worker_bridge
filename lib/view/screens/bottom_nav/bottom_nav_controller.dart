import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:worker_bridge/utils/app_utils/app_icon/app_icons.dart';
import 'package:worker_bridge/view/screens/booking/booking_screen.dart';
import 'package:worker_bridge/view/screens/bottom_nav/bottom_nav_model.dart';
import 'package:worker_bridge/view/screens/home/home_screen.dart';
import 'package:worker_bridge/view/screens/inbox/inbox_screen.dart';
import 'package:worker_bridge/view/screens/menu/menu_screen.dart';
import 'package:worker_bridge/view/screens/save/save_screen.dart';

class BottomNavController extends GetxController{

  BottomNavController();

  List<Widget> screenList = const [
    HomeScreen(),
    InboxScreen(),
    BookingScreen(),
    SaveScreen(),
    MenuScreen(),
  ];

  List<BottomNavModel> bottomNavList = [
    BottomNavModel(iconSrc: AppIcons.homeIcon, screenName: "Home"),
    BottomNavModel(iconSrc: AppIcons.inboxIcon, screenName: "Inbox"),
    BottomNavModel(iconSrc: AppIcons.bookingIcon, screenName: "Booking"),
    BottomNavModel(iconSrc: AppIcons.savedIcon, screenName: "Saved"),
    BottomNavModel(iconSrc: AppIcons.menuIcon, screenName: "Menu"),
  ];

  int selectedScreen = 0;

  void changeScreen(int index){
    selectedScreen = index;
    update();
  }
}