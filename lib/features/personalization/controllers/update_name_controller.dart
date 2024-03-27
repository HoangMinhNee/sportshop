import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sportshop/data/repositories/user/user_repository.dart';
import 'package:sportshop/features/personalization/controllers/user_controller.dart';
import 'package:sportshop/features/personalization/screens/profile/profile.dart';
import 'package:sportshop/utils/contants/image_strings.dart';
import 'package:sportshop/utils/helpers/network_manager.dart';
import 'package:sportshop/utils/popups/fullscreen_loader.dart';
import 'package:sportshop/utils/popups/loader.dart';

class UpdateNameController extends GetxController {
  static UpdateNameController get instance => Get.find();

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userController = UserController.instance;
  final userRepository = Get.put(UserRepository());
  GlobalKey<FormState> updateUserNameFormKey = GlobalKey<FormState>();

  //* Init user data when Home Screen appears
  @override
  void onInit() {
    initializeNames();
    super.onInit();
  }

  //* Fetch user record
  Future<void> initializeNames() async {
    firstName.text = userController.user.value.firstName;
    lastName.text = userController.user.value.lastName;
  }

  Future<void> updateUserName() async {
    try {
      //* Start Loading
      MFullScreenLoader.openLoadingDialog(
          'Chúng tôi đang cập nhật thông tin của bạn...',
          MImages.docerAnimation);

      //* Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        MFullScreenLoader.stopLoading();
        return;
      }

      //* Form Validation
      if (!updateUserNameFormKey.currentState!.validate()) {
        MFullScreenLoader.stopLoading();
        return;
      }

      //* Update user's first & last name in the Firebase Firestore
      Map<String, dynamic> name = {
        'Họ': firstName.text.trim(),
        'Tên': lastName.text.trim()
      };
      await userRepository.updateSingleField(name);

      //* Update the Rx User value
      userController.user.value.firstName = firstName.text.trim();
      userController.user.value.lastName = lastName.text.trim();

      //* Remove Loader
      MFullScreenLoader.stopLoading();

      //* Show Success Message
      MLoaders.successSnackBar(
          title: 'Chúc mừng', message: 'Tên của bạn đã được thay đổi.');

      //* Move to previous screen.
      Get.off(() => const ProfileScreen());
    } catch (e) {
      MFullScreenLoader.stopLoading();
      MLoaders.errorSnackBar(title: 'Ôi không!', message: e.toString());
    }
  }
}
