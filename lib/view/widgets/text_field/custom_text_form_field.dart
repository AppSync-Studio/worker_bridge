import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';

class CustomTextFormField extends StatefulWidget {

  final Color cursorColor;
  final TextEditingController? textEditingController;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final String labelText;
  final Widget? prefixIcon;
  final Function()? onTap;
  final FormFieldValidator? formValidator;
  final bool readOnly;
  final bool isPassword;

  const CustomTextFormField({
    this.cursorColor = AppColors.colorBlack,
    this.textEditingController,
    this.textInputType,
    this.textInputAction,
    required this.labelText,
    this.prefixIcon,
    this.onTap,
    this.isPassword = false,
    this.formValidator,
    this.readOnly = false,
    super.key
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {

  bool obscureText = true;

  @override
  Widget build(BuildContext context) {

    return widget.isPassword ? TextFormField(
      obscureText: obscureText,
      cursorColor: widget.cursorColor,
      controller: widget.textEditingController,
      keyboardType: widget.textInputType,
      textInputAction: widget.textInputAction,
      style: GoogleFonts.nunito(
          color: AppColors.colorBlack,
          fontWeight: FontWeight.w400,
          fontSize: 14
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.transparent,
        labelText: widget.labelText,
        labelStyle: GoogleFonts.nunito(
              color: AppColors.colorBlack,
              fontSize: 16,
              fontWeight: FontWeight.w600
          ),
        border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: AppColors.colorGrey, width: 1)
          ),
        enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: AppColors.colorGrey, width: 1)
          ),
        focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: AppColors.primaryColor, width: 1)
          ),
        suffixIcon: GestureDetector(
          onTap: () => _toggle(),
          child: Icon(obscureText ? Icons.visibility_off : Icons.visibility, size: 24, color: AppColors.colorGrey),
        )
      ),
      validator: widget.formValidator,
    ) : TextFormField(
      readOnly: widget.readOnly,
      cursorColor: widget.cursorColor,
      controller: widget.textEditingController,
      keyboardType: widget.textInputType,
      textInputAction: widget.textInputAction,
      style: GoogleFonts.nunito(
        color: AppColors.colorBlack,
        fontWeight: FontWeight.w400,
        fontSize: 14
      ),
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.transparent,
          labelText: widget.labelText,
          labelStyle: GoogleFonts.nunito(
            color: AppColors.colorBlack,
            fontSize: 16,
            fontWeight: FontWeight.w600
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppColors.colorGrey, width: 1)
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppColors.colorGrey, width: 1)
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppColors.primaryColor, width: 1)
          ),
          prefixIcon: widget.prefixIcon
      ),
      onTap: widget.onTap,
      validator: widget.formValidator,
    );
  }

  void _toggle() {
    setState(() {
      obscureText = !obscureText;
    });
  }
}
