import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';

class EditProfileController extends GetxController{

  EditProfileController();

  File? imageFile;
  ImagePicker imagePicker = ImagePicker();

  final GlobalKey editProfileFormKey = GlobalKey<FormState>();

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  // image pick from gallery
  void pickImageFromGallery() async{

    final pickImageFile = await imagePicker.pickImage(source: ImageSource.gallery, maxHeight: 96, maxWidth: 96);

      if(pickImageFile != null){
        imageFile = File(pickImageFile.path);
        update();
      }
      Get.back();
    }

  // image upload from camera
  void uploadImageFromCamera() async{

    final pickImageFile = await imagePicker.pickImage(source: ImageSource.camera, maxHeight: 96, maxWidth: 96);
    if(pickImageFile != null){
      imageFile = File(pickImageFile.path);
      update();
    }
    Get.back();
  }

  // edit profile screen initial state
  void initialState() {
    usernameController.text = "Mirza Mahmud Hossan";
    emailController.text = "mirza.dev25@gmail.com";
    addressController.text = "Mirpur-2, Dhaka";
  }

  // profile update
  void updateProfile(){
    Fluttertoast.showToast(
      msg: "Profile updated successfully",
      backgroundColor: AppColors.primaryColor,
      textColor: AppColors.colorWhite,
      fontSize: 16,
      toastLength: Toast.LENGTH_LONG
    );
  }
}