import 'package:flutter/material.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/helpers/helper_functions.dart';

class MVerticalImageText extends StatelessWidget {
  const MVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = MColors.white,
    this.backgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: MSizes.spaceBtwItems),
        child: Column(
          children: [
            /// Circular Icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(MSizes.sm),
              decoration: BoxDecoration(
                  color:
                      backgroundColor ?? (dark ? MColors.black : MColors.white),
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark ? MColors.light : MColors.dark,
                ),
              ),
            ),

            /// Text
            const SizedBox(height: MSizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
              ),
            )

            // Flexible(
            //   child: Text(
            //     title,
            //     textAlign: TextAlign.center,
            //     style: Theme.of(context)
            //         .textTheme
            //         .labelMedium!
            //         .apply(color: textColor),
            //     maxLines: 1,
            //     overflow: TextOverflow.ellipsis,
            //     softWrap: true,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
