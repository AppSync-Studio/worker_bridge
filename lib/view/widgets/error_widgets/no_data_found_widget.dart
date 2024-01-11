import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:worker_bridge/utils/app_utils/app_animation/app_animation.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';

class NoDataFoundWidget extends StatelessWidget {

  final String animSrc;
  final double animSize;
  final String errorTitle;

  const NoDataFoundWidget({
    required this.animSrc,
    this.animSize = 150,
    this.errorTitle = "No Data Found",
    super.key
  });

  @override
  Widget build(BuildContext context) {

    return Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(AppAnimation.noDataAnim, height: 150, width: 150),
          Text(
            "No Data Found",
            style: GoogleFonts.nunito(
                color: AppColors.colorBlack,
                fontWeight: FontWeight.w600,
                fontSize: 14
            ),
          )
        ],
      ),
    );
  }
}
