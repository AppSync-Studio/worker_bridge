import 'package:flutter/material.dart';
import 'package:worker_bridge/utils/app_utils/extensions/gap_extension.dart';
import 'package:worker_bridge/view/screens/home/home_controller.dart';
import 'package:worker_bridge/view/widgets/cards/home_screen_service_card.dart';
import 'package:worker_bridge/view/widgets/text/section_title_widget.dart';

class AcRepairSection extends StatelessWidget {

  final HomeController homeController;
  const AcRepairSection({required this.homeController, super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitleWidget(sectionTitle: "AC Repair & Maintenance", onTap: (){}),
        12.00.sectionToContentGap,
        SingleChildScrollView(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 24),
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: List.generate(homeController.acRepairList.length, (index) => HomeScreenServiceCard(
                leftSpacing: index == homeController.acRepairList.lastIndexWhere((element) => false) ? 0 : 12,
                imageSrc: homeController.acRepairList[index].imageSrc,
                serviceTitle: homeController.acRepairList[index].serviceTitle,
                serviceRating: homeController.acRepairList[index].serviceRating,
                servicePrice: homeController.acRepairList[index].servicePrice
            )),
          ),
        )
      ],
    );
  }
}
