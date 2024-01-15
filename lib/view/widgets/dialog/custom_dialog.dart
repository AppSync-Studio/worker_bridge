import 'package:flutter/material.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';

class CustomDialog{

  final Widget child;

  CustomDialog({required this.child});

  void customDialog(BuildContext context) {

    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: AppColors.colorWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)
        ),
        insetPadding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
              color: AppColors.colorWhite,
              borderRadius: BorderRadius.circular(12)
            ),
            child: child,
          ),
        ),
      )
    );
  }
}