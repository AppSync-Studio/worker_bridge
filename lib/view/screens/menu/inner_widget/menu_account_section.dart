import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/route/app_route.dart';
import 'package:worker_bridge/utils/app_utils/app_icon/app_icons.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';

class MenuAccountSection extends StatelessWidget {

  const MenuAccountSection({super.key});

  @override
  Widget build(BuildContext context) {

    return  Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsetsDirectional.symmetric(vertical: 16),
      decoration: BoxDecoration(
          color: AppColors.colorWhite,
          border: Border.all(color: AppColors.colorGrey, width: 0.5),
          borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 12),
            child: Text(
              "Account",
              style: GoogleFonts.nunito(
                  color: AppColors.colorGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.w500
              ),
            ),
          ),
          Column(
            children: [

              // my profile
              GestureDetector(
                onTap: () => Get.toNamed(AppRoute.profileScreen),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsetsDirectional.symmetric(horizontal: 12, vertical: 16),
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: AppColors.colorGrey, width: 0.5)
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            AppIcons.myProfileIcon,
                            height: 18, width: 18,
                          ),
                          const Gap(8),
                          Text(
                            "My Profile",
                            style: GoogleFonts.nunito(
                                color: AppColors.colorBlack,
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                      const Icon(Icons.arrow_forward_ios, color: AppColors.colorBlack, size: 18)
                    ],
                  ),
                ),
              ),

              // my payment methods
              GestureDetector(
                onTap: () => Get.toNamed(AppRoute.paymentMethodsScreen),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsetsDirectional.symmetric(horizontal: 12, vertical: 16),
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: AppColors.colorGrey, width: 0.5)
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            AppIcons.myCardsIcon,
                            height: 18, width: 18,
                          ),
                          const Gap(8),
                          Text(
                            "My Payment Methods",
                            style: GoogleFonts.nunito(
                                color: AppColors.colorBlack,
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                      const Icon(Icons.arrow_forward_ios, color: AppColors.colorBlack, size: 18)
                    ],
                  ),
                ),
              ),

              // My addresses
              GestureDetector(
                onTap: (){},
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsetsDirectional.symmetric(horizontal: 12, vertical: 16),
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: AppColors.colorGrey, width: 0.5)
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            AppIcons.myAddressIcon,
                            height: 18, width: 18,
                          ),
                          const Gap(8),
                          Text(
                            "My Addresses",
                            style: GoogleFonts.nunito(
                                color: AppColors.colorBlack,
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                      const Icon(Icons.arrow_forward_ios, color: AppColors.colorBlack, size: 18)
                    ],
                  ),
                ),
              ),

              // change password
              GestureDetector(
                onTap: () => Get.toNamed(AppRoute.changePasswordScreen),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsetsDirectional.only(start: 12, top: 16, end: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            AppIcons.changePasswordIcon,
                            height: 18, width: 18,
                          ),
                          const Gap(8),
                          Text(
                            "Change Password",
                            style: GoogleFonts.nunito(
                                color: AppColors.colorBlack,
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                      const Icon(Icons.arrow_forward_ios, color: AppColors.colorBlack, size: 18)
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
