import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/utils/app_utils/app_image/app_image.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/utils/app_utils/extensions/gap_extension.dart';
import 'package:worker_bridge/view/screens/home/home_controller.dart';
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
            children: List.generate(4, (index) => Container(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 12, vertical: 12),
              margin: EdgeInsetsDirectional.only(end: index == 3 ? 0 : 12),
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.colorGrey, width: 0.5)
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: const Image(
                      image: AssetImage(AppImage.fullHomeDeepCleanImage),
                      fit: BoxFit.fill,
                      height: 96, width: 96,
                    ),
                  ),
                  const Gap(12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Full Home Deep Cleaning",
                          style: GoogleFonts.nunito(color: AppColors.colorBlack, fontWeight: FontWeight.w700, fontSize: 16),
                        ),
                        const Gap(8),
                        Row(
                          children: [
                            const Icon(Icons.star, color: Colors.amber, size: 18),
                            const Gap(4),
                            Text(
                              "4.5",
                              style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 14, fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                        const Gap(8),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Start from - ",
                                style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 12, fontWeight: FontWeight.w400)
                              ),
                              TextSpan(
                                text: "\$35",
                                style: GoogleFonts.nunito(color: AppColors.primaryColor, fontSize: 14, fontWeight: FontWeight.w700)
                              )
                            ]
                          ),
                        )
                      ],
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
