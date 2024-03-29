import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';

class SectionTitleWidget extends StatelessWidget {

  final String sectionTitle;
  final VoidCallback onTap;

  const SectionTitleWidget({required this.sectionTitle, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            sectionTitle,
            style: GoogleFonts.nunito(
              color: AppColors.colorBlack,
              fontSize: 16,
              fontWeight: FontWeight.w600
            )
          ),
          TextButton(
            onPressed: onTap,
            child: Text(
              "View All",
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                color: AppColors.primaryColor,
                fontSize: 12,
                fontWeight: FontWeight.w400
              ),
            )
          )
        ],
      ),
    );
  }
}
