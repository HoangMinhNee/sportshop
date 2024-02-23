import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sportshop/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:sportshop/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:sportshop/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:sportshop/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:sportshop/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:sportshop/utils/contants/image_strings.dart';
import 'package:sportshop/utils/contants/text_string.dart';

class OnBoardingSrceen extends StatelessWidget {
  const OnBoardingSrceen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          //Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: MImages.onBoardingImage1,
                title: MTexts.onBoardingTitle1,
                subTitle: MTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: MImages.onBoardingImage2,
                title: MTexts.onBoardingTitle2,
                subTitle: MTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: MImages.onBoardingImage3,
                title: MTexts.onBoardingTitle3,
                subTitle: MTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          // Skip button
          const OnBoardingSkip(),

          // Dot Navigation
          const OnBoardingDotNavigation(),

          // Cicular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
