import 'package:flutter/material.dart';
import 'package:sportshop/common/widgets/brands/brand_show_case.dart';
import 'package:sportshop/common/widgets/layouts/grid_layout.dart';
import 'package:sportshop/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:sportshop/common/widgets/texts/section_heading.dart';
import 'package:sportshop/utils/contants/image_strings.dart';
import 'package:sportshop/utils/contants/sizes.dart';

class MCategoryTab extends StatelessWidget {
  const MCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(MSizes.defaultSpace),
            child: Column(
              children: [
                //* Brands
                const MBrandShowcase(images: [
                  MImages.productImage1,
                  MImages.productImage2,
                  MImages.productImage3
                ]),
                const SizedBox(height: MSizes.spaceBtwItems),

                //* Product
                MSectionHeading(
                  title: 'You might like',
                  onPressed: () {},
                ),
                const SizedBox(height: MSizes.spaceBtwItems),

                MGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const MProductCardVertical()),
                const SizedBox(height: MSizes.spaceBtwSections),
              ],
            ),
          ),
        ]);
  }
}
