import 'package:flutter/material.dart';
import 'package:worker_bridge/utils/app_utils/extensions/gap_extension.dart';
import 'package:worker_bridge/view/screens/home/home_controller.dart';
import 'package:worker_bridge/view/widgets/cards/home_screen_service_card.dart';
import 'package:worker_bridge/view/widgets/home/section_title_widget.dart';

class HouseCleaningSection extends StatelessWidget {

  final HomeController homeController;
  const HouseCleaningSection({required this.homeController, super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitleWidget(sectionTitle: "House Cleaning", onTap: (){}),
        12.00.sectionToContentGap,
        SingleChildScrollView(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 24),
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: List.generate(homeController.houseCleaningList.length, (index) => HomeScreenServiceCard(
              leftSpacing: index == homeController.houseCleaningList.lastIndexWhere((element) => false) ? 0 : 12,
              imageSrc: homeController.houseCleaningList[index].imageSrc,
              serviceTitle: homeController.houseCleaningList[index].serviceTitle,
              serviceRating: homeController.houseCleaningList[index].serviceRating,
              servicePrice: homeController.houseCleaningList[index].servicePrice
            )),
          ),
        )
      ],
    );
  }
}
