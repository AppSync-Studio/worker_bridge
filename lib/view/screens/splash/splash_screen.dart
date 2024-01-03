import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/utils/app_utils/app_image/app_image.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/utils/app_utils/static_text/app_static_text.dart';
import 'package:worker_bridge/view/screens/splash/splash_controller.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    final controller = Get.put(SplashController());
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controller.initialState();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        body: Align(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImage.appLogoImage, height: 100, width: 100),
              const Gap(12),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "${AppStaticText.worker} ",
                      style: GoogleFonts.nunito(
                        color: AppColors.colorBlack,
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      )
                    ),
                    TextSpan(
                      text: "${AppStaticText.bridge} ",
                      style: GoogleFonts.nunito(
                        color: AppColors.primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      )
                    )
                  ]
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
