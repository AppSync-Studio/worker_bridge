import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/utils/app_utils/app_icon/app_icons.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/view/screens/notification/notification_controller.dart';
import 'package:worker_bridge/view/widgets/cards/custom_card_widget.dart';

class NotificationScreen extends StatefulWidget {

  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {

  @override
  void initState() {
    Get.put(NotificationController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      top: false,
      bottom: false,
      child: GetBuilder<NotificationController>(
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.scaffoldBackgroundColor,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: AppColors.colorWhite,
              automaticallyImplyLeading: false,
              leading: IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.arrow_back, color: AppColors.colorBlack),
                iconSize: 18,
                alignment: Alignment.center,
              ),
              titleSpacing: 0,
              title: Text("Notifications", textAlign: TextAlign.center, style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 18, fontWeight: FontWeight.w500)),
            ),
            body: SingleChildScrollView(
              padding: const EdgeInsetsDirectional.only(start: 24, end: 24, top: 20, bottom: 8),
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: List.generate(controller.notificationList.length, (index) => CustomCardWidget(
                  child: Row(
                    children: [
                      Container(
                        height: 52, width: 52,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.colorGrey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset(AppIcons.notificationMessageIcon, color: AppColors.colorBlack, height: 24, width: 24),
                      ),
                      const Gap(12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  controller.notificationList[index].title,
                                  style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 14, fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  controller.notificationList[index].time,
                                  style: GoogleFonts.nunito(color: AppColors.colorGrey, fontSize: 12, fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            const Gap(4),
                            Text(
                              controller.notificationList[index].details,
                              style: GoogleFonts.nunito(color: AppColors.primaryColor, fontSize: 12, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )),
              ),
            ),
          );
        }
      ),
    );
  }
}
