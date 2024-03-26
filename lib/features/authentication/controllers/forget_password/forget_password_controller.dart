import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sportshop/data/repositories/authentication/authentication_repository.dart';
import 'package:sportshop/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:sportshop/utils/contants/image_strings.dart';
import 'package:sportshop/utils/helpers/network_manager.dart';
import 'package:sportshop/utils/popups/fullscreen_loader.dart';
import 'package:sportshop/utils/popups/loader.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  //* Variables
  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  //* Send Reset Password Email
  sendPaswordResetEmail() async {
    try {
      //* Start Loading
      MFullScreenLoader.openLoadingDialog(
          'Đang xử lý yêu cầu của bạn...', MImages.docerAnimation);

      //* Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        MFullScreenLoader.stopLoading();
        return;
      }

      //* Form Validation
      if (!forgetPasswordFormKey.currentState!.validate()) {
        MFullScreenLoader.stopLoading();
        return;
      }

      //* Send Email to Reset Password
      await AuthenticationRepository.instance
          .sendPaswordResetEmail(email.text.trim());

      //* Remove Loader
      MFullScreenLoader.stopLoading();

      //* Show Success Screen
      MLoaders.successSnackBar(
          title: 'Đã gửi email',
          message: 'Liên kết email được gửi để đặt lại mật khẩu của bạn'.tr);

      //* Redirect
      Get.to(() => ResetPasswordScreen(email: email.text.trim()));
    } catch (e) {
      //* Remove Loader
      MFullScreenLoader.stopLoading();
      MLoaders.errorSnackBar(title: 'Ôi không', message: e.toString());
    }
  }

  resendPasswordResetEmail(String email) async {
    try {
      //* Start Loading
      MFullScreenLoader.openLoadingDialog(
          'Đang xử lý yêu cầu của bạn...', MImages.docerAnimation);

      //* Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        MFullScreenLoader.stopLoading();
        return;
      }

      //* Send Email to Reset Password
      await AuthenticationRepository.instance.sendPaswordResetEmail(email);

      //* Remove Loader
      MFullScreenLoader.stopLoading();

      //* Show Success Screen
      MLoaders.successSnackBar(
          title: 'Đã gửi email',
          message: 'Liên kết email được gửi để đặt lại mật khẩu của bạn'.tr);
    } catch (e) {
      //* Remove Loader
      MFullScreenLoader.stopLoading();
      MLoaders.errorSnackBar(title: 'Ôi không', message: e.toString());
    }
  }
}
