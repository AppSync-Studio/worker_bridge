import 'package:flutter/material.dart';
import 'package:worker_bridge/view/screens/payment_methods/payment_method_controller.dart';

class PaymentMethodBottomNav extends StatelessWidget {

  final PaymentMethodController paymentMethodController;

  const PaymentMethodBottomNav({required this.paymentMethodController, super.key});

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
    );
  }
}
