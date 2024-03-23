import 'package:flutter/material.dart';
import 'package:sportshop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sportshop/common/widgets/images/circular_image.dart';
import 'package:sportshop/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:sportshop/common/widgets/texts/product_price_text.dart';
import 'package:sportshop/common/widgets/texts/product_title_text.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/contants/enums.dart';
import 'package:sportshop/utils/contants/image_strings.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/helpers/helper_functions.dart';

class MProductMetaData extends StatelessWidget {
  const MProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //* Price & Sale Price
        Row(
          children: [
            //* Sale Tag
            MRoundedContainer(
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
            const SizedBox(width: MSizes.spaceBtwItems),

            //* Price
            Text(
              '3.694.000 đ',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(width: MSizes.spaceBtwItems),
            const MProductPriceText(price: '2.790.000', isLarge: true),
          ],
        ),
        const SizedBox(height: MSizes.spaceBtwItems / 1.5),

        //* Title
        const MProductTitleText(
            title: 'Giày Thể Thao Nike Air Zoom Pegasus 33'),
        const SizedBox(height: MSizes.spaceBtwItems / 1.5),

        //* Stock Status
        Row(
          children: [
            const MProductTitleText(title: 'Tình trạng'),
            const SizedBox(width: MSizes.spaceBtwItems),
            Text('Còn hàng', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: MSizes.spaceBtwItems / 1.5),

        //* Brand
        Row(
          children: [
            MCircularImage(
              image: MImages.nikeLogo,
              width: 32,
              height: 32,
              overlayColor: dark ? MColors.white : MColors.black,
            ),
            const MBrandTitleWithVerifiedIcon(
                title: 'Nike', brandTextSize: TextSizes.medium),
          ],
        )
      ],
    );
  }
}
