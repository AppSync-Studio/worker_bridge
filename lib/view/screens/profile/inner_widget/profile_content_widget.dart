import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';

class ProfileContentWidget extends StatelessWidget {

  final IconData iconData;
  final String contentTitle;
  final String content;

  const ProfileContentWidget({
    required this.iconData,
    required this.contentTitle,
    required this.content,
    super.key
  });

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Container(
          height: 40, width: 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.colorGrey.withOpacity(0.1),
            shape: BoxShape.circle
          ),
          child: Icon(iconData, color: AppColors.colorBlack, size: 20),
        ),
        const Gap(12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              contentTitle,
              style: GoogleFonts.nunito(
                color: AppColors.colorGrey,
                fontSize: 12,
                fontWeight: FontWeight.w400
              ),
            ),
            const Gap(4),
            Text(
              content,
              style: GoogleFonts.nunito(
                color: AppColors.primaryColor,
                fontSize: 14,
                fontWeight: FontWeight.w600
              ),
            )
          ],
        )
      ],
    );
  }
}
