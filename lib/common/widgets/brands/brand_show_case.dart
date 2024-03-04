import 'package:flutter/material.dart';
import 'package:sportshop/common/widgets/brands/brand_card.dart';
import 'package:sportshop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/helpers/helper_functions.dart';

class MBrandShowcase extends StatelessWidget {
  const MBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return MRoundedContainer(
      showBorder: true,
      borderColor: MColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(MSizes.md),
      margin: const EdgeInsets.only(bottom: MSizes.spaceBtwItems),
      child: Column(children: [
        //* Brand with products count
        const MBrandCard(showBorder: false),
        const SizedBox(height: MSizes.spaceBtwItems),

        //* Brand top 3 product images
        Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList())
      ]),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: MRoundedContainer(
        height: 100,
        backgroundColor: MHelperFunctions.isDarkMode(context)
            ? MColors.darkerGrey
            : MColors.light,
        margin: const EdgeInsets.only(right: MSizes.sm),
        padding: const EdgeInsets.all(MSizes.md),
        child: Image(fit: BoxFit.contain, image: AssetImage(image)),
      ),
    );
  }
}
