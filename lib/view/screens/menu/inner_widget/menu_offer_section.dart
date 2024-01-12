import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/utils/app_utils/app_icon/app_icons.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';

class MenuOfferSection extends StatelessWidget {

  const MenuOfferSection({super.key});

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
              "Offers",
              style: GoogleFonts.nunito(
                  color: AppColors.colorGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.w500
              ),
            ),
          ),
          Column(
            children: [
              // promo codes
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
                            AppIcons.promoIcon,
                            height: 18, width: 18,
                          ),
                          const Gap(8),
                          Text(
                            "Promo Codes",
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
              // get discount
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
                            AppIcons.getDiscountIcon,
                            height: 18, width: 18,
                          ),
                          const Gap(8),
                          Text(
                            "Get Discount",
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
              // refer
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
                            AppIcons.referIcon,
                            height: 18, width: 18,
                          ),
                          const Gap(8),
                          Text(
                            "Refer",
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
