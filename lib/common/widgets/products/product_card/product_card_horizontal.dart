import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportshop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sportshop/common/widgets/icons/circular_icon.dart';
import 'package:sportshop/common/widgets/images/rounded_image.dart';
import 'package:sportshop/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:sportshop/common/widgets/texts/product_price_text.dart';
import 'package:sportshop/common/widgets/texts/product_title_text.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/contants/image_strings.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/helpers/helper_functions.dart';

class MProductCardHorizontal extends StatelessWidget {
  const MProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(MSizes.productImageRadius),
        color: dark ? MColors.darkerGrey : MColors.lightContainer,
      ),
      child: Row(
        children: [
          //* Thumbnail
          MRoundedContainer(
            height: 120,
            width: 120,
            padding: const EdgeInsets.all(MSizes.sm),
            backgroundColor: dark ? MColors.dark : MColors.light,
            child: Stack(
              children: [
                //* Thumnail Image
                const MRoundedImage(
                  imageUrl: MImages.productImage1,
                  applyImageRadius: true,
                ),

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

                //* --Favourite Icon Butotn
                const Positioned(
                  top: 0,
                  right: 0,
                  child: MCircularIcon(icon: Iconsax.heart5, color: Colors.red),
                )
              ],
            ),
          ),

          //* Detail
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: MSizes.sm, left: MSizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MProductTitleText(
                          title: 'Nike Air Zoom Pegasus 33', smallSize: true),
                      SizedBox(height: MSizes.spaceBtwItems / 2),
                      MBrandTitleWithVerifiedIcon(title: 'Nike')
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //* Pricing
                      const Flexible(
                          child: MProductPriceText(price: '2999999')),

                      //* Add to cart
                      Container(
                        decoration: const BoxDecoration(
                          color: MColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(MSizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(MSizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                          width: MSizes.iconLg * 1.2,
                          height: MSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(Iconsax.add, color: MColors.white),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
