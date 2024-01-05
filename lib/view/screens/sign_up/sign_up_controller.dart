import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/route/app_route.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';

class SignUpController extends GetxController{

  SignUpController();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController codeController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  void initialState(){
    nameController.text = "";
    emailController.text = "";
    codeController.text = "";
    phoneNumberController.text = "";
    dobController.text = "";
    genderController.text = "";
    addressController.text = "";
    passwordController.text = "";
    confirmPasswordController.text = "";
  }

  void pickDate(BuildContext context) async{
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2050),
      builder: (context, child) => Theme(
        data: Theme.of(context).copyWith(
          colorScheme: const ColorScheme.light(
            primary: AppColors.primaryColor,
          )
        ),
        child: child!,
      )
    );

    if(pickedDate != null){
      dobController.text = "${pickedDate.year} - ${pickedDate.month} - ${pickedDate.day}";
    }
  }

  List<String> genderList = ["Male", "Female", "Other"];
  int selectedGender = 0;
  void pickGender(BuildContext context){
    showModalBottomSheet(
      context: context, 
      builder: (context) => SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 24),
          decoration: const BoxDecoration(
            color: AppColors.colorWhite,
            borderRadius: BorderRadius.vertical(top: Radius.circular(16))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Select Gender",
                style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const Gap(12),
              const Divider(color: AppColors.colorGrey, height: 0.5),

              const Gap(24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(genderList.length, (index) => GestureDetector(
                  onTap: () {
                    selectedGender = index;
                    genderController.text = genderList[selectedGender];
                    Get.back();
                    update();
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: index == 2 ? null : const EdgeInsetsDirectional.only(bottom: 12) ,
                    padding: const EdgeInsetsDirectional.symmetric(vertical: 12, horizontal: 12),
                    decoration: BoxDecoration(
                      color: AppColors.colorWhite,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: AppColors.colorBlack, width: 0.5)
                    ),
                    child: Text(genderList[index], style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 14, fontWeight: FontWeight.w400)),
                  ),
                )),
              )
            ],
          ),
        ),
      )
    );
  }

  void gotoHomeScreen(){
    Get.offAndToNamed(AppRoute.homeScreen);
  }
}