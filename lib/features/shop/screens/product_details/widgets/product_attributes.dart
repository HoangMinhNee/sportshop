import 'package:flutter/material.dart';
import 'package:sportshop/common/widgets/chips/choice_chip.dart';
import 'package:sportshop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sportshop/common/widgets/texts/product_price_text.dart';
import 'package:sportshop/common/widgets/texts/product_title_text.dart';
import 'package:sportshop/common/widgets/texts/section_heading.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/helpers/helper_functions.dart';

class MProductAttributes extends StatelessWidget {
  const MProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        //* -- Selected Attribute Pricing & Description
        MRoundedContainer(
          padding: const EdgeInsets.all(MSizes.md),
          backgroundColor: dark ? MColors.darkerGrey : MColors.grey,
          child: Column(
            children: [
              //* Title, Price and Stock Status
              Row(
                children: [
                  const MSectionHeading(
                      title: 'Variation', showActionButton: false),
                  const SizedBox(width: MSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const MProductTitleText(
                              title: 'Giá : ', smallSize: true),

                          //* Actual Price
                          Text(
                            '2.000.000\đ',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: MSizes.spaceBtwItems),

                          //* Sale Price
                          const MProductPriceText(price: '750.000'),
                        ],
                      ),

                      //* Stock
                      Row(
                        children: [
                          const MProductTitleText(
                              title: 'Stock : ', smallSize: true),
                          Text('In Stock',
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      )
                    ],
                  )
                ],
              ),

              //* Variation Description
              const MProductTitleText(
                title:
                    'This is the Description of the Product and it can go up to max 4 lines.',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(height: MSizes.spaceBtwItems),

        //* Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MSectionHeading(title: 'Màu', showActionButton: false),
            const SizedBox(height: MSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                MChoiceChip(
                    text: 'Green', selected: true, onSelected: (value) {}),
                MChoiceChip(
                    text: 'Red', selected: false, onSelected: (value) {}),
                MChoiceChip(
                    text: 'Blue', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MSectionHeading(title: 'Size'),
            const SizedBox(height: MSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                MChoiceChip(
                    text: '38', selected: false, onSelected: (value) {}),
                MChoiceChip(text: '39', selected: true, onSelected: (value) {}),
                MChoiceChip(
                    text: '40', selected: false, onSelected: (value) {}),
                MChoiceChip(
                    text: '41', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
