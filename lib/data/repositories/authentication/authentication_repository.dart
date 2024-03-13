import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sportshop/features/authentication/screens/login/login.dart';
import 'package:sportshop/features/authentication/screens/onboarding/onboarding.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  //* Variables
  final deviceStorage = GetStorage();

  //* Called from main.dart on app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  //* Function to show Relevant Screen
  screenRedirect() async {
    //* Local Storage
    if (kDebugMode) {
      print('************ GET STORAGE Auth Repo ************');
      print(deviceStorage.read('IsFirstTime'));
    }

    deviceStorage.writeIfNull('IsFirstTime', true);
    deviceStorage.read('IsFirstTime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(const OnBoardingSrceen());
  }

  // ------------------ Email & Password sign-in ------------------ //

  //* [EmailAuthentication] - Sign In

  //* [EmailAuthentication] SIGN UP

  //* [ReAuthenticate] Reauthenticate User

  //* [EmailVerification] VERIFY EMAIL

  //* [EmailAuthentication] FORGOT PASSWORD

  // ----------- Federated Identity & Social Login -------------- //

  //* [GoogleAuthentication] - GOOGLE
  //* [FacebookAuthentication] - FACEBOOK

  // ------------------- Logout & Delete User -------------------- //

  //* [LogoutUser] - Valid for any authentication.
  //* DELETE USER - Remove User Authentication and Firestore Acount.
}
