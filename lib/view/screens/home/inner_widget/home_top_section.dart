import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/route/app_route.dart';
import 'package:worker_bridge/utils/app_utils/app_icon/app_icons.dart';
import 'package:worker_bridge/utils/app_utils/app_image/app_image.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/view/screens/home/home_controller.dart';

class HomeTopSection extends StatelessWidget {

  final HomeController homeController;
  const HomeTopSection({required this.homeController, super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 24, end: 24, top: 36, bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 48,
                      width: 48,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: AppColors.primaryColor, width: 2),
                          image: const DecorationImage(image: AssetImage(AppImage.profileAvatarImage), fit: BoxFit.fill)
                      ),
                    ),
                  ),
                  const Gap(8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "Mirza Mahmud Hossan",
                          style: GoogleFonts.nunito(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w800,
                              fontSize: 16
                          )
                      ),
                      const Gap(4),
                      Row(
                        children: [
                          const Icon(Icons.place_outlined, color: AppColors.colorBlack, size: 16),
                          const Gap(4),
                          Text(
                            "Mirpur-2, Dhaka",
                            style: GoogleFonts.nunito(
                                color: AppColors.colorBlack,
                                fontSize: 12,
                                fontWeight: FontWeight.w400
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              IconButton(onPressed: () => Get.toNamed(AppRoute.notificationScreen), icon: SvgPicture.asset(AppIcons.notificationIcon), iconSize: 24)
            ],
          ),
          const Gap(16),
          GestureDetector(
            onTap: (){},
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsetsDirectional.symmetric(vertical: 12, horizontal: 12),
              decoration: BoxDecoration(
                color: AppColors.colorWhite,
                border: Border.all(color: AppColors.primaryColor, width: 0.5),
                borderRadius: BorderRadius.circular(12)
              ),
              alignment: Alignment.center,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(CupertinoIcons.search, size: 24, color: AppColors.colorGrey),
                  const Gap(12),
                  Text(
                    "Search...",
                    style: GoogleFonts.nunito(color: AppColors.colorGrey, fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
