import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportshop/common/widgets/appbar/appbar.dart';
import 'package:sportshop/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:sportshop/common/widgets/icons/circular_icon.dart';
import 'package:sportshop/common/widgets/images/rounded_image.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/contants/image_strings.dart';
import 'package:sportshop/utils/contants/sizes.dart';

class MProductImageSlider extends StatelessWidget {
  const MProductImageSlider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return MCurvedEdgeWidget(
      child: Container(
        color: dark ? MColors.darkerGrey : MColors.light,
        child: Stack(
          children: [
            //* Main Large Image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(MSizes.productImageRadius * 2),
                child: Center(
                    child: Image(image: AssetImage(MImages.productImage1))),
              ),
            ),

            //* Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: MSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                    itemCount: 8,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    separatorBuilder: (_, __) =>
                        const SizedBox(width: MSizes.spaceBtwItems),
                    itemBuilder: (_, index) => MRoundedImage(
                          width: 80,
                          backgroundColor: dark ? MColors.dark : MColors.white,
                          border: Border.all(color: MColors.primary),
                          padding: const EdgeInsets.all(MSizes.sm),
                          imageUrl: MImages.productImage10,
                        )),
              ),
            ),

            //* Appbar Icon
            const MAppBar(
              showBackArrow: true,
              actions: [
                MCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
