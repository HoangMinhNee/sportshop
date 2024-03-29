import 'package:flutter/material.dart';
import 'package:sportshop/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: MDeviceUtils.getAppBarHeight(),
        right: MSizes.defaultSpace,
        child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: const Text('Skip'),
        ));
  }
}
