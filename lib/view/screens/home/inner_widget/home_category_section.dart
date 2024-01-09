import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/utils/app_utils/extensions/gap_extension.dart';
import 'package:worker_bridge/view/screens/home/home_controller.dart';

class HomeCategorySection extends StatelessWidget {

  final HomeController homeController;
  const HomeCategorySection({required this.homeController, super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Category",
                style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 16, fontWeight: FontWeight.w600)
              ),
              TextButton(
                onPressed: (){},
                child: Text(
                  "View All",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(color: AppColors.primaryColor, fontSize: 12, fontWeight: FontWeight.w400),
                )
              )
            ],
          ),
        ),
        12.00.sectionToContentGap,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 24),
          child: Row(
            children: List.generate(homeController.categoryList.length, (index) => Container(
              height: 85, width: 100,
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 12, vertical: 12),
              margin: EdgeInsetsDirectional.only(end: index == homeController.categoryList.last ? 0 : 12),
              alignment: Alignment.center,
              decoration: BoxDecoration(color: AppColors.colorWhite, borderRadius: BorderRadius.circular(12), border: Border.all(color: AppColors.colorBlack)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    homeController.categoryList[index].imageSrc.toString(),
                    height: 32, width: 32,
                  ),
                  8.00.contentToContentGap,
                  Expanded(
                    child: Text(
                      homeController.categoryList[index].title.toString(),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 12, fontWeight: FontWeight.w600),
                      maxLines: 1, overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            )),
          ),
        )
      ],
    );
  }
}
