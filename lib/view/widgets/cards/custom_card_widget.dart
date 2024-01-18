import 'package:flutter/material.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';

class CustomCardWidget extends StatelessWidget {

  final Widget child;
  final Color cardBgColor;
  final Color cardBorderColor;
  final double cardBorderRadius;

  const CustomCardWidget({
    required this.child,
    this.cardBgColor = AppColors.colorWhite,
    this.cardBorderColor = AppColors.colorGrey,
    this.cardBorderRadius = 12,
    super.key
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsetsDirectional.all(12),
      margin: const EdgeInsetsDirectional.only(bottom: 12),
      decoration: BoxDecoration(
        color: cardBgColor,
        borderRadius: BorderRadius.circular(cardBorderRadius),
        border: Border.all(color: cardBorderColor.withOpacity(0.3), width: 1)
      ),
      child: child,
    );
  }
}
