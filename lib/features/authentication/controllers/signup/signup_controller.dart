import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sportshop/data/repositories/authentication/authentication_repository.dart';
import 'package:sportshop/data/repositories/user/user_repository.dart';
import 'package:sportshop/features/authentication/screens/signup/verify_email.dart';
import 'package:sportshop/features/personalization/models/user_model.dart';
import 'package:sportshop/utils/contants/image_strings.dart';
import 'package:sportshop/utils/helpers/network_manager.dart';
import 'package:sportshop/utils/popups/fullscreen_loader.dart';
import 'package:sportshop/utils/popups/loader.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  //* Variables
  final hidePasswork = true.obs; //* Observable for hiding/showing passwork
  final privacyPolicy = true.obs; //* Observable for privacy policy acceptance
  final email = TextEditingController(); // Controller for email input
  final lastName = TextEditingController(); // Controller for lastName input
  final username = TextEditingController(); // Controller for username input
  final password = TextEditingController(); // Controller for password input
  final firstName = TextEditingController(); // Controller for firstName input
  final phoneNumber =
      TextEditingController(); // Controller for phoneNumber input
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  //* -- Signup
  void signup() async {
    try {
      //* Start Loading
      MFullScreenLoader.openLoadingDialog(
          'Chúng tôi đang xử lý thông tin của bạn...', MImages.docerAnimation);

      //* Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        //* Remove Loader
        MFullScreenLoader.stopLoading();
        return;
      }

      //* Form Validation
      if (!signupFormKey.currentState!.validate()) {
        //* Remove Loader
        MFullScreenLoader.stopLoading();
        return;
      }

      //* Privacy Policy Check
      if (!privacyPolicy.value) {
        MLoaders.warningSnackBar(
            title: 'Chú ý!',
            message:
                'Để tạo tài khoản, bạn phải đọc và chấp nhận Quyền riêng tư & Điều khoản sử dụng.');
        //* Remove Loader
        MFullScreenLoader.stopLoading();
        return;
      }

      //* Register user in the Firebase Authentication & Save user data in the Firebase
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      //* Save Authenticated user data in the Firebase Firestore
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        username: username.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      //* Remove Loader
      MFullScreenLoader.stopLoading();

      //* Show success Message
      MLoaders.successSnackBar(
          title: 'Chúc mừng',
          message:
              'Tài khoản của bạn đã được tạo! Xác nhận email để tiếp tục.');

      //* Move to Verify Email Screen
      Get.to(() => VerifyEmailScreen(email: email.text.trim()));
    } catch (e) {
      //* Remove Loader
      MFullScreenLoader.stopLoading();

      //* Show some Generic Error to the user
      MLoaders.errorSnackBar(title: 'Ôi Không!', message: e.toString());
    }
  }
}
