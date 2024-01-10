import 'package:flutter/material.dart';
import 'package:worker_bridge/utils/app_utils/extensions/gap_extension.dart';
import 'package:worker_bridge/view/screens/home/home_controller.dart';
import 'package:worker_bridge/view/widgets/cards/home_screen_service_card.dart';
import 'package:worker_bridge/view/widgets/home/section_title_widget.dart';

class CarServiceSection extends StatelessWidget {

  final HomeController homeController;

  const CarServiceSection({required this.homeController, super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitleWidget(sectionTitle: "Car Wash & Service", onTap: (){}),
        12.00.sectionToContentGap,
        SingleChildScrollView(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 24),
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: List.generate(homeController.carServiceList.length, (index) => HomeScreenServiceCard(
                leftSpacing: index == homeController.carServiceList.lastIndexWhere((element) => false) ? 0 : 12,
                imageSrc: homeController.carServiceList[index].imageSrc,
                serviceTitle: homeController.carServiceList[index].serviceTitle,
                serviceRating: homeController.carServiceList[index].serviceRating,
                servicePrice: homeController.carServiceList[index].servicePrice
            )),
          ),
        )
      ],
    );
  }
}
