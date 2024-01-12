import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/view/screens/sign_in/sign_in_controller.dart';

class SignInBottomSheetSection extends StatelessWidget {

  final SignInController signInController;

  const SignInBottomSheetSection({required this.signInController, super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 5, width: 75,
            decoration: BoxDecoration(
              color: AppColors.colorGrey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(12)
            ),
          ),
        ),
        const Gap(16),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Dial Code",
              textAlign: TextAlign.left,
              style: GoogleFonts.nunito(
                color: AppColors.colorBlack,
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),
            )
          ],
        ),
        const Gap(16),
        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(signInController.phoneCodeList.length, (index) => GestureDetector(
                onTap: () => signInController.changePhoneCode(index),
                child: Container(
                  padding: const EdgeInsetsDirectional.symmetric(horizontal: 12, vertical: 12),
                  margin: const EdgeInsetsDirectional.only(bottom: 8),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColors.colorGrey.withOpacity(0.3), width: 1)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        signInController.phoneCodeList[index].countryName,
                        style: GoogleFonts.nunito(
                          color: AppColors.colorBlack,
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                      Text(
                        signInController.phoneCodeList[index].dialCode,
                        style: GoogleFonts.nunito(
                          color: AppColors.primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                        ),
                      )
                    ],
                  ),
                ),
              )),
            ),
          ),
        )
      ],
    );
  }
}
