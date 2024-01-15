import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';

class GetDevicePermissions{

  // checking camera permission
  static Future<bool> getCameraPermission() async{

    PermissionStatus permissionStatus = await Permission.camera.status;

    if(permissionStatus.isGranted){
      return true;
    }
    else if(permissionStatus.isDenied){
      PermissionStatus status = await Permission.camera.request();
      if(status.isGranted){
        return true;
      }
      else{
        Fluttertoast.showToast(
          msg: "Camera permission is required",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: AppColors.colorWhite,
          fontSize: 14.0
        );
      }
    }

    return false;
  }

  /// checking external storage permission
  static Future<bool> getStroagePermission() async{

    PermissionStatus permissionStatus = await Permission.storage.status;
    if(permissionStatus.isGranted){
      return true;
    }
    else if(permissionStatus.isDenied){
      PermissionStatus status = await Permission.storage.request();
      if(status.isGranted){
        return true;
      }
      else{
        Fluttertoast.showToast(
            msg: "Storage permission is required",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: AppColors.colorWhite,
            fontSize: 14.0
        );
      }
    }

    return false;
  }
}