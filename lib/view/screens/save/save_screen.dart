import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:worker_bridge/utils/app_utils/app_animation/app_animation.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';

class SaveScreen extends StatefulWidget {
  const SaveScreen({super.key});

  @override
  State<SaveScreen> createState() => _SaveScreenState();
}

class _SaveScreenState extends State<SaveScreen> {
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Align(
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
        )
      ],
    );
  }
}
