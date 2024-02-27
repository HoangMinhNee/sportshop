import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sportshop/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:sportshop/common/widgets/images/rounded_image.dart';
import 'package:sportshop/features/shop/controllers/home_controller.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/contants/sizes.dart';

class MPromoSlider extends StatelessWidget {
  const MPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
            options: CarouselOptions(
                viewportFraction: 1,
                onPageChanged: (index, _) =>
                    controller.updatePageIndicator(index)),
            items: banners.map((url) => MRoundedImage(imageUrl: url)).toList()),
        const SizedBox(height: MSizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  MCircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentIndex.value == i
                        ? MColors.primary
                        : MColors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
