import 'package:flutter/services.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';

class AppDeviceUtils{

  static void splashUtils() => SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: AppColors.colorWhite,
      systemNavigationBarColor: AppColors.colorWhite,
      systemNavigationBarIconBrightness: Brightness.dark
    )
  );
}