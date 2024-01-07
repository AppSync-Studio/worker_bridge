import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/view/screens/home/home_controller.dart';
import 'package:worker_bridge/view/screens/home/inner_widget/home_banner_section.dart';
import 'package:worker_bridge/view/screens/home/inner_widget/home_category_section.dart';
import 'package:worker_bridge/view/screens/home/inner_widget/home_top_section.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    Get.put(HomeController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      top: false, bottom: false,
      child: GetBuilder<HomeController>(
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.scaffoldBackgroundColor,
            body: Column(
              children: [
                // top section
                HomeTopSection(homeController: controller),
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsetsDirectional.only(bottom: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // banner section
                      HomeBannerSection(homeController: controller),
                      const Gap(16),
                      // category section
                      HomeCategorySection(homeController: controller)
                    ],
                  ),
                )
              ],
            ),
          );
        }
      ),
    );
  }
}
