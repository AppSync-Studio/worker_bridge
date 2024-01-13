import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';

class CustomDivider extends StatelessWidget {

  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        const Gap(12),
        Divider(color: AppColors.colorGrey.withOpacity(0.3), height: 1),
        const Gap(12),
      ],
    );
  }
}
