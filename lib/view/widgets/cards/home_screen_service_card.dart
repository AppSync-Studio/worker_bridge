import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';

class HomeScreenServiceCard extends StatelessWidget {

  final double leftSpacing;
  final double borderWidth;
  final double borderRadius;
  final Color borderColor;
  final String imageSrc;
  final double imageSize;
  final String serviceTitle;
  final double serviceRating;
  final double servicePrice;

  const HomeScreenServiceCard({
    required this.leftSpacing,
    this.borderWidth = 0.5,
    this.borderRadius = 12,
    this.borderColor = AppColors.colorGrey,
    required this.imageSrc,
    this.imageSize = 96,
    required this.serviceTitle,
    required this.serviceRating,
    required this.servicePrice,
    super.key
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 12, vertical: 12),
      margin: EdgeInsetsDirectional.only(end: leftSpacing),
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: borderColor, width: borderWidth)
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image(
              image: AssetImage(imageSrc),
              fit: BoxFit.fill,
              height: imageSize, width: imageSize,
            ),
          ),
          const Gap(12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  serviceTitle,
                  style: GoogleFonts.nunito(color: AppColors.colorBlack, fontWeight: FontWeight.w700, fontSize: 16),
                ),
                const Gap(8),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 18),
                    const Gap(4),
                    Text(
                      "$serviceRating",
                      style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 14, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                const Gap(8),
                RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Start from: ",
                            style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 12, fontWeight: FontWeight.w400)
                        ),
                        TextSpan(
                            text: "\$${servicePrice.toStringAsFixed(2)}",
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
    );
  }
}
