import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportshop/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/device/device_utility.dart';
import 'package:sportshop/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);

    return Positioned(
      right: MSizes.defaultSpace,
      bottom: MDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? MColors.primary : Colors.black,
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
