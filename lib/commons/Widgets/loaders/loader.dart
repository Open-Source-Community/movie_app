import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

class Myloader {
  static customTost({required message}) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(
        elevation: 0,
        duration: Duration(seconds: 3),
        backgroundColor: Colors.transparent,
        content: Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: MyHelperFunctions.isDarkMode(Get.context!)
                ? MyColors.darkGrey.withOpacity(0.9)
                : MyColors.grey.withOpacity(0.9),
          ),
          child: Center(
              child: Text(
            message,
            style: Theme.of(Get.context!).textTheme.labelLarge,
          )),
        )));
  }

  static sucessSnackbar({required title, message = '', deration = 3}) {
    Get.snackbar(title, message,
        isDismissible: true,
        shouldIconPulse: true,
        colorText: MyColors.primary,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: MyColors.primary,
        duration: Duration(seconds: deration),
        margin: EdgeInsets.all(20),
        icon: Icon(
          Iconsax.check,
          color: MyColors.white,
        ));
  }

  static warningSnackbar({required title, message = '', deration = 3}) {
    Get.snackbar(title, message,
        isDismissible: true,
        shouldIconPulse: true,
        colorText: MyColors.white,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.orange.shade700,
        duration: Duration(seconds: deration),
        margin: EdgeInsets.all(20),
        icon: Icon(
          Iconsax.warning_2,
          color: MyColors.white,
        ));
  }

  static erorrSnackbar({required title, message = '', deration = 3}) {
    Get.snackbar(title, message,
        isDismissible: true,
        shouldIconPulse: true,
        colorText: MyColors.white,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red.shade600,
        duration: Duration(seconds: deration),
        margin: EdgeInsets.all(20),
        icon: Icon(
          Iconsax.warning_2,
          color: MyColors.white,
        ));
  }
}
