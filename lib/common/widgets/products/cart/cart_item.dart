import 'package:flutter/material.dart';
import 'package:sportshop/common/widgets/images/rounded_image.dart';
import 'package:sportshop/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:sportshop/common/widgets/texts/product_title_text.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/contants/image_strings.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/helpers/helper_functions.dart';

class MCartItem extends StatelessWidget {
  const MCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //* Image
        MRoundedImage(
          imageUrl: MImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(MSizes.sm),
          backgroundColor: MHelperFunctions.isDarkMode(context)
              ? MColors.darkerGrey
              : MColors.light,
        ),
        const SizedBox(width: MSizes.spaceBtwItems),

        //* Title, Price, Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MBrandTitleWithVerifiedIcon(title: 'Nike'),
              const Flexible(
                child: MProductTitleText(
                    title:
                        'Giày thể thao adfaswaasfasdfasdfasdfasdfasdfasfasfasfa',
                    maxLines: 1),
              ),

              //* Attributes
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Màu ', style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'Xanh lá ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'Size ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: '41 ', style: Theme.of(context).textTheme.bodySmall),
              ]))
            ],
          ),
        )
      ],
    );
  }
}
