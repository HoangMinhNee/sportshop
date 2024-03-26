import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sportshop/data/repositories/authentication/authentication_repository.dart';
import 'package:sportshop/features/personalization/controllers/user_controller.dart';
import 'package:sportshop/utils/contants/image_strings.dart';
import 'package:sportshop/utils/helpers/network_manager.dart';
import 'package:sportshop/utils/popups/fullscreen_loader.dart';
import 'package:sportshop/utils/popups/loader.dart';

class LoginController extends GetxController {
  //* Variables
  final rememberMe = false.obs;
  final hidePasswork = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  final userController = Get.put(UserController());

  @override
  void onInit() {
    email.text = localStorage.read('REMEMBER_ME_EMAIL') ?? '';
    password.text = localStorage.read('REMEMBER_ME_PASSWORD') ?? '';
    super.onInit();
  }

  //* -- Email and Password SignIn
  Future<void> emailAndPasswordSignIn() async {
    try {
      //* Start Loading
      MFullScreenLoader.openLoadingDialog(
          'Đang đăng nhập...', MImages.docerAnimation);

      //* Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        MFullScreenLoader.stopLoading();
        return;
      }

      //* Form Validation
      if (!loginFormKey.currentState!.validate()) {
        MFullScreenLoader.stopLoading();
        return;
      }

      //* Save Data if Remember Me is selected
      if (rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }

      //* Login user using Email & Password Authentication
      final userCredentials = await AuthenticationRepository.instance
          .loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      //* Remove Loader
      MFullScreenLoader.stopLoading();

      //* Redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      MFullScreenLoader.stopLoading();
      MLoaders.errorSnackBar(title: 'Ôi Không', message: e.toString());
    }
  }

  //* -- Google SignIn Authentication
  Future<void> googleSignIn() async {
    try {
      //* Start Loading
      MFullScreenLoader.openLoadingDialog(
          'Đang đăng nhập...', MImages.docerAnimation);

      //* Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        MFullScreenLoader.stopLoading();
        return;
      }

      //* Google Authentication
      final userCredentials =
          await AuthenticationRepository.instance.signInWithGoogle();

      //* Save User Record
      await userController.saveUserRecord(userCredentials);

      //* Remove Loader
      MFullScreenLoader.stopLoading();

      //* Redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      //* Remove Loader
      MFullScreenLoader.stopLoading();
      MLoaders.errorSnackBar(title: 'Ôi Không', message: e.toString());
    }
  }
}
