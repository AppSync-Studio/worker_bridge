import 'package:flutter/material.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';

class CustomBottomSheet {

  final Widget child;
  final Color backgroundColor;
  final VoidCallback? voidCallback;
  final bool isDialCode;

  const CustomBottomSheet({
    required this.child,
    this.voidCallback,
    this.backgroundColor = AppColors.colorWhite,
    this.isDialCode = false
  });

  void customBottomSheet(BuildContext context){

    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: AppColors.colorTransparent,
        context: context,
        builder: (BuildContext context) => isDialCode ? Container(
          height: MediaQuery.of(context).size.height * .8,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
          decoration:  BoxDecoration(
            color: backgroundColor,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12))
          ),
          child: child,
        ) : SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: AnimatedPadding(
            padding: MediaQuery.of(context).viewInsets,
            duration: const Duration(milliseconds: 100),
            curve: Curves.decelerate,
            child: Container(
              width: MediaQuery.of(context).size.height,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * .1),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
              decoration:  BoxDecoration(
                color: backgroundColor,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(12))
              ),
              child: child,
            ),
          ),
        )
    ).then((value){
      voidCallback;
    });
  }
}