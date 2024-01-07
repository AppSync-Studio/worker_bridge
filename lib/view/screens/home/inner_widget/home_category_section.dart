import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/view/screens/home/home_controller.dart';

class HomeCategorySection extends StatelessWidget {

  final HomeController homeController;
  const HomeCategorySection({required this.homeController, super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
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
          )
        ],
      ),
    );
  }
}
