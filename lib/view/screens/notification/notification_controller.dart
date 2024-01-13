import 'package:get/get.dart';
import 'package:worker_bridge/view/screens/notification/notification_model.dart';

class NotificationController extends GetxController{

  NotificationController();

  List<NotificationModel> notificationList = [
    NotificationModel(
      title: "Worker Bridge",
      details: "Recently you have been taking Kitchen Deep Cleaning service.",
      time: "Jan 13, 2024",
    ),
    NotificationModel(
      title: "Worker Bridge",
      details: "Your Car Break Noise Repair service has been finished.",
      time: "Jan 4, 2024",
    ),
    NotificationModel(
        title: "Worker Bridge",
        details: "Recently you have been taking Car Break Noise Repair service.",
        time: "Jan 2, 2024",
    ),
    NotificationModel(
      title: "Worker Bridge",
      details: "Welcome to Worker Bridge",
      time: "Jan 1, 2024",
    ),
  ];
}