import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportshop/common/styles/shadows.dart';
import 'package:sportshop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sportshop/common/widgets/icons/circular_icon.dart';
import 'package:sportshop/common/widgets/images/rounded_image.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/contants/image_strings.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/helpers/helper_functions.dart';

class MProductCardVertical extends StatelessWidget {
  const MProductCardVertical({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);

    return Container(
      width: 180,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [MShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(MSizes.productImageRadius),
        color: dark ? MColors.darkerGrey : MColors.white,
      ),
      child: Column(children: [
        /// thumbnail, Whishlist Button, Discount Tag
        MRoundedContainer(
          height: 180,
          padding: const EdgeInsets.all(MSizes.sm),
          backgroundColor: dark ? MColors.dark : MColors.light,
          child: Stack(
            children: [
              /// --Thumbnail Image
              const MRoundedImage(
                imageUrl: MImages.productImage1,
                applyImageRadius: true,
              ),

              /// --Sale Tag
              Positioned(
                top: 12,
                child: MRoundedContainer(
                  radius: MSizes.sm,
                  backgroundColor: MColors.secondary.withOpacity(0.8),
                  padding: const EdgeInsets.symmetric(
                      horizontal: MSizes.sm, vertical: MSizes.xs),
                  child: Text(
                    '25%',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .apply(color: MColors.black),
                  ),
                ),
              ),

              /// --Favourite Icon Butotn
              const Positioned(
                top: 0,
                right: 0,
                child: MCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
