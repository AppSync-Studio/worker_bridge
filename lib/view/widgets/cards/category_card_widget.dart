import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/utils/app_utils/extensions/gap_extension.dart';

class CategoryCardWidget extends StatelessWidget {

  final double rightSpacing;
  final double? cardHeight;
  final double? cardWidth;
  final Color cardColor;
  final Color borderColor;
  final String iconSrc;
  final double iconSize;
  final String categoryName;
  final int maxLines;
  final VoidCallback onPressed;


  const CategoryCardWidget({
    this.rightSpacing = 0,
    this.cardHeight,
    this.cardWidth,
    this.cardColor = AppColors.colorWhite,
    this.borderColor = AppColors.colorGrey,
    required this.iconSrc,
    this.iconSize = 32,
    required this.categoryName,
    this.maxLines = 1,
    required this.onPressed,
    super.key
  });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: cardHeight, width: cardWidth,
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 12, vertical: 12),
        margin: EdgeInsetsDirectional.only(end: rightSpacing),
        alignment: Alignment.center,
        decoration: BoxDecoration(color: cardColor, borderRadius: BorderRadius.circular(12), border: Border.all(color: borderColor)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconSrc,
              height: iconSize, width: iconSize,
            ),
            8.00.contentToContentGap,
            Expanded(
              child: Text(
                categoryName,
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 12, fontWeight: FontWeight.w600),
                maxLines: maxLines, overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
