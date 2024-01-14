import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/route/app_route.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/utils/app_utils/extensions/gap_extension.dart';
import 'package:worker_bridge/view/screens/home/home_controller.dart';
import 'package:worker_bridge/view/widgets/cards/category_card_widget.dart';
import 'package:worker_bridge/view/widgets/text/section_title_widget.dart';

class HomeCategorySection extends StatelessWidget {

  final HomeController homeController;
  const HomeCategorySection({required this.homeController, super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitleWidget(
            sectionTitle: "Category",
            onTap: () => Get.toNamed(AppRoute.categoryScreen)
        ),
        12.00.sectionToContentGap,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 24),
          child: Row(
            children: List.generate(homeController.categoryList.length, (index) => CategoryCardWidget(
              onPressed: (){},
              cardHeight: 85, cardWidth: 100,
              rightSpacing: index == homeController.categoryList.last ? 0 : 12,
              iconSrc: homeController.categoryList[index].imageSrc.toString(),
              categoryName: homeController.categoryList[index].title.toString()
            )),
          ),
        )
      ],
    );
  }
}
