import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/utils/app_utils/app_icon/app_icons.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/view/widgets/text_field/custom_text_form_field.dart';

class PaymentBottomNavContent extends StatelessWidget {

  const PaymentBottomNavContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
            Text("Add Payment Method", style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 16, fontWeight: FontWeight.w600))
          ],
        ),
        const Gap(16),
        Form(
          child: Column(
            children: [
              CustomTextFormField(
                textInputType: TextInputType.number,
                textInputAction: TextInputAction.next,
                textEditingController: TextEditingController(),
                labelText: "Name on Card",
                prefixIcon: const Icon(Icons.person, color: AppColors.colorGrey)
              ),
              const Gap(12),
              CustomTextFormField(
                  textInputType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  textEditingController: TextEditingController(),
                  labelText: "Card Number",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset(
                        AppIcons.cameraIcon,
                        height: 24, width: 24,
                        color: AppColors.colorGrey,
                      fit: BoxFit.cover,
                    ),
                  )
              ),
              const Gap(12),
            ],
          ),
        )
      ],
    );
  }
}
