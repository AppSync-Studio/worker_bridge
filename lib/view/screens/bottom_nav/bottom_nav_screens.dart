import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/utils/app_utils/extensions/gap_extension.dart';
import 'package:worker_bridge/view/screens/bottom_nav/bottom_nav_controller.dart';

class BottomNavScreens extends StatefulWidget {
  const BottomNavScreens({super.key});

  @override
  State<BottomNavScreens> createState() => _BottomNavScreensState();
}

class _BottomNavScreensState extends State<BottomNavScreens> {

  @override
  void initState() {
    Get.put(BottomNavController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      top: false, bottom: false,
      child: GetBuilder<BottomNavController>(
        builder: (controller) {

          return Scaffold(
            backgroundColor: AppColors.colorWhite,
            body: controller.screenList[controller.selectedScreen],
            bottomNavigationBar: Container(
              height: 80, width: MediaQuery.of(context).size.height,
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 24, vertical: 8),
              alignment: Alignment.center,
              color: AppColors.colorGrey.withOpacity(0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(controller.screenList.length, (index) => IconButton(
                  onPressed: () => controller.changeScreen(index),
                  icon: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          controller.bottomNavList[index].iconSrc,
                          height: 18, width: 18,
                          color: index == controller.selectedScreen ? AppColors.primaryColor : AppColors.colorBlack,
                        ),
                        4.00.contentToContentGap,
                        Text(
                          controller.bottomNavList[index].screenName,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                            color: index == controller.selectedScreen ? AppColors.primaryColor : AppColors.colorBlack,
                            fontSize: 12
                              ,
                            fontWeight: FontWeight.w500
                          ),
                        )
                      ],
                    ),
                  )
                )),
              ),
            ),
          );
        }
      ),
    );
  }
}
