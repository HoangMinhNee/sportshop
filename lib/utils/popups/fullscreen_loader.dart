import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sportshop/common/widgets/loaders/animation_loader.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/helpers/helper_functions.dart';

//* A utility class for managing a full-screen loading dialog.
class MFullScreenLoader {
  //* Open a full-screen loading dialog with a given text and animation.
  //* This method doesn't return anything.

  //* Parameters:
  //* - text: The text to be displayed in the loading dialog.
  //* - animation: The Lottie animation to be shown.
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context:
          Get.overlayContext!, //* use Get.overlayContext for overplay dialogs
      barrierDismissible:
          false, //* the dialog can't be dismissed by tapping outside it
      builder: (_) => PopScope(
        canPop: false, //* Disable poping with the back button
        child: Container(
          color: MHelperFunctions.isDarkMode(Get.context!)
              ? MColors.dark
              : MColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 250), //* Adjust the spacing as needed
              MAnimationLoaderWidget(text: text, animation: animation)
            ],
          ),
        ),
      ),
    );
  }

  //* Stop the currently open loading dialog
  //* This method doesn't return anything.
  static stopLoading() {
    Navigator.of(Get.overlayContext!)
        .pop(); //* Close the dialog using the Navigator
  }
}
