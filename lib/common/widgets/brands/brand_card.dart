import 'package:flutter/material.dart';
import 'package:sportshop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sportshop/common/widgets/images/circular_image.dart';
import 'package:sportshop/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/contants/enums.dart';
import 'package:sportshop/utils/contants/image_strings.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/helpers/helper_functions.dart';

class MBrandCard extends StatelessWidget {
  const MBrandCard({super.key, required this.showBorder, this.onTap});

  final bool showBorder;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final isDark = MHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      //* Container Design
      child: MRoundedContainer(
        padding: const EdgeInsets.all(MSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //* -- Icon
            Flexible(
              child: MCircularImage(
                isNetworkImage: false,
                image: MImages.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor: isDark ? MColors.white : MColors.black,
              ),
            ),
            const SizedBox(width: MSizes.spaceBtwItems / 2),

            //* --Text
            //* [Expanded] & Colum [MainAxisSize.min] is important to keep the elements in the vertical center
            //* and also to keep text inside the boundaries.
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MBrandTitleWithVerifiedIcon(
                      title: 'Nike', brandTextSize: TextSizes.large),
                  Text(
                    '256 products ',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
