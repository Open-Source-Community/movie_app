import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/commons/Widgets/loaders/animation_loader.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

class MyFullScreenLoader {
  static void openLoadingDilog(String text, String animation) {
    showDialog(
        barrierDismissible: false,
        context: Get.overlayContext!,
        builder: (_) => PopScope(
            canPop: false,
            child: Container(
              color: MyHelperFunctions.isDarkMode(Get.context!)
                  ? MyColors.dark
                  : MyColors.white,
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    height: 250,
                  ),
                  MyAnimationLoaderWidget(text: text, animation: animation),
                ],
              ),
            )));
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
