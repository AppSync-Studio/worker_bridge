import 'package:flutter/material.dart';
import 'package:worker_bridge/view/screens/payment_methods/inner_widget/payment_bottom_nav_content.dart';
import 'package:worker_bridge/view/screens/payment_methods/payment_method_controller.dart';
import 'package:worker_bridge/view/widgets/bottom_sheet/custom_bottom_sheet.dart';
import 'package:worker_bridge/view/widgets/buttons/custom_button_widget.dart';

class PaymentMethodBottomNav extends StatelessWidget {

  final PaymentMethodController paymentMethodController;

  const PaymentMethodBottomNav({required this.paymentMethodController, super.key});

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsetsDirectional.symmetric(vertical: 12, horizontal: 24),
        child: CustomButtonWidget(
          onPressed: () => const CustomBottomSheet(child: PaymentBottomNavContent()).customBottomSheet(context),
          buttonTitle: "Add Payment Method"
        ),
      ),
    );
  }
}
