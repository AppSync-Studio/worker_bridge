import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/utils/app_utils/app_animation/app_animation.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/view/screens/payment_methods/inner_widget/payment_method_bottom_nav.dart';
import 'package:worker_bridge/view/screens/payment_methods/payment_method_controller.dart';
import 'package:worker_bridge/view/widgets/cards/custom_card_widget.dart';
import 'package:worker_bridge/view/widgets/error_widgets/no_data_found_widget.dart';

class PaymentMethodsScreen extends StatefulWidget {

  const PaymentMethodsScreen({super.key});

  @override
  State<PaymentMethodsScreen> createState() => _PaymentMethodsScreenState();
}

class _PaymentMethodsScreenState extends State<PaymentMethodsScreen> {

  @override
  void initState() {
    Get.put(PaymentMethodController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      top: false,
      bottom: false,
      child: GetBuilder<PaymentMethodController>(
        builder: (paymentMethodController) {
          return Scaffold(
            backgroundColor: AppColors.scaffoldBackgroundColor,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: AppColors.colorWhite,
              automaticallyImplyLeading: false,
              leading: IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.arrow_back, color: AppColors.colorBlack),
                iconSize: 18,
              ),
              titleSpacing: 0,
              title: Text("Payment Methods", style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 18, fontWeight: FontWeight.w500)),
            ),
            body: const Center(
              child: NoDataFoundWidget(animSrc: AppAnimation.noDataAnim)
            ),
            bottomNavigationBar: PaymentMethodBottomNav(paymentMethodController: paymentMethodController),
          );
        }
      ),
    );
  }
}
