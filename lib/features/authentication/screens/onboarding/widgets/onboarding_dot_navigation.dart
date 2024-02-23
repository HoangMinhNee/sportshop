import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sportshop/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/device/device_utility.dart';
import 'package:sportshop/utils/helpers/helper_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = MHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: MDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: MSizes.defaultSpace,
      child: SmoothPageIndicator(
        count: 3,
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? MColors.light : MColors.dark, dotHeight: 6),
      ),
    );
  }
}
