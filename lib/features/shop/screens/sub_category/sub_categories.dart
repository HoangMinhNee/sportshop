import 'package:flutter/material.dart';
import 'package:sportshop/common/widgets/appbar/appbar.dart';
import 'package:sportshop/common/widgets/images/rounded_image.dart';
import 'package:sportshop/common/widgets/products/product_card/product_card_horizontal.dart';
import 'package:sportshop/common/widgets/texts/section_heading.dart';
import 'package:sportshop/utils/contants/image_strings.dart';
import 'package:sportshop/utils/contants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppBar(
        title: Text('Sports'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              //* Banner
              const MRoundedImage(
                width: double.infinity,
                height: null,
                imageUrl: MImages.promoBanner4,
                applyImageRadius: true,
              ),
              const SizedBox(height: MSizes.spaceBtwSections),

              //* Sub-Categories
              Column(
                children: [
                  //* Heading
                  MSectionHeading(title: 'Sports shirts', onPressed: () {}),
                  const SizedBox(height: MSizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: ((context, index) =>
                            const SizedBox(width: MSizes.spaceBtwItems)),
                        itemBuilder: (context, index) =>
                            const MProductCardHorizontal()),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
