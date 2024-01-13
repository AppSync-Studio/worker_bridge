import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';

class CustomButtonWidget extends StatelessWidget {

  final VoidCallback onPressed;
  final Color buttonBgColor;
  final double buttonHeight;
  final double borderRadius;
  final String buttonTitle;
  final Color buttonTitleColor;
  final double buttonTitleSize;

  const CustomButtonWidget({
    required this.onPressed,
    this.buttonBgColor = AppColors.primaryColor,
    this.buttonHeight = 48,
    this.borderRadius = 12,
    required this.buttonTitle,
    this.buttonTitleColor = AppColors.colorWhite,
    this.buttonTitleSize = 16,

    super.key
  });

  @override
  Widget build(BuildContext context) {

    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: buttonBgColor,
        alignment: Alignment.center,
        fixedSize: Size(MediaQuery.of(context).size.width, buttonHeight),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius)
        )
      ),
      child: Text(
        buttonTitle,
        textAlign: TextAlign.center,
        style: GoogleFonts.nunito(
            color: buttonTitleColor,
            fontSize: buttonTitleSize,
            fontWeight: FontWeight.w600
        ),
      ),
    );
  }
}
