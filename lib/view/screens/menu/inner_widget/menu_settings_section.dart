import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/utils/app_utils/app_icon/app_icons.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/view/screens/menu/menu_controller.dart';
import 'package:worker_bridge/view/widgets/bottom_sheet/custom_bottom_sheet.dart';

class MenuSettingsSection extends StatelessWidget {
  
  final AppMenuController appMenuController;
  
  const MenuSettingsSection({required this.appMenuController, super.key});

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
              "Settings",
              style: GoogleFonts.nunito(
                  color: AppColors.colorGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.w500
              ),
            ),
          ),
          Column(
            children: [
              // Language
              GestureDetector(
                onTap: () => CustomBottomSheet(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 5, width: 75,
                          decoration: BoxDecoration(color: AppColors.colorGrey.withOpacity(0.3), borderRadius: BorderRadius.circular(12)),
                        ),
                      ),
                      const Gap(16),
                      Row(
                        children: [
                          Text("Select Language", style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 16, fontWeight: FontWeight.w600))
                        ],
                      ),
                      const Gap(16),
                      SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          children: List.generate(appMenuController.languageList.length, (index) => GestureDetector(
                            onTap: () => appMenuController.changeLanguage(index),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              margin: const EdgeInsetsDirectional.only(bottom: 12),
                              padding: const EdgeInsetsDirectional.symmetric(horizontal: 12, vertical: 12),
                              decoration: BoxDecoration(
                                color: index == appMenuController.selectedLanguage ? AppColors.primaryColor : AppColors.colorWhite,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: index == appMenuController.selectedLanguage ? AppColors.primaryColor : AppColors.colorGrey.withOpacity(0.5),
                                  width: 0.5
                                )
                              ),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                appMenuController.languageList[index].name,
                                style: GoogleFonts.nunito(
                                  color: index == appMenuController.selectedLanguage ? AppColors.colorWhite : AppColors.colorBlack,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14
                                ),
                              ),
                            ),
                          ))
                        ),
                      )
                    ],
                  )
                ).customBottomSheet(context),
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
                            AppIcons.languageIcon,
                            height: 18, width: 18,
                          ),
                          const Gap(8),
                          Text(
                            "Languages",
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

              // become a provider
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
                            AppIcons.becomeProviderIcon,
                            height: 18, width: 18,
                          ),
                          const Gap(8),
                          Text(
                            "Become a Provider",
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

              // sign out
              GestureDetector(
                onTap: (){},
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsetsDirectional.only(start: 12, top: 16, end: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            AppIcons.signOutIcon,
                            height: 18, width: 18,
                          ),
                          const Gap(8),
                          Text(
                            "Sign Out",
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
