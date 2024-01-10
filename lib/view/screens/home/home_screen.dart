import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:worker_bridge/view/screens/home/home_controller.dart';
import 'package:worker_bridge/view/screens/home/inner_widget/ac_repair_section.dart';
import 'package:worker_bridge/view/screens/home/inner_widget/home_banner_section.dart';
import 'package:worker_bridge/view/screens/home/inner_widget/home_category_section.dart';
import 'package:worker_bridge/view/screens/home/inner_widget/home_top_section.dart';
import 'package:worker_bridge/view/screens/home/inner_widget/house_cleaning_section.dart';

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

    return GetBuilder<HomeController>(
      builder: (controller) => Column(
        children: [
          // top section
          HomeTopSection(homeController: controller),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsetsDirectional.only(bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // banner section
                  HomeBannerSection(homeController: controller),
                  const Gap(16),
                  // category section
                  HomeCategorySection(homeController: controller),
                  const Gap(16),
                  // house cleaning section
                  HouseCleaningSection(homeController: controller),
                  const Gap(16),
                  // ac repair and maintenance
                  AcRepairSection(homeController: controller),
                  const Gap(16),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
