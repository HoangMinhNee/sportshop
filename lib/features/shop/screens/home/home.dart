import 'package:flutter/material.dart';
import 'package:sportshop/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:sportshop/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:sportshop/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:sportshop/common/widgets/texts/section_heading.dart';
import 'package:sportshop/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:sportshop/features/shop/screens/home/widgets/home_categories.dart';
import 'package:sportshop/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/contants/image_strings.dart';
import 'package:sportshop/utils/contants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- Appbar
                  MHomeAppBar(),
                  SizedBox(height: MSizes.spaceBtwSections),

                  /// -- Seacrhbar
                  MSearchContainer(text: 'Tìm kiếm'),
                  SizedBox(height: MSizes.spaceBtwSections),

                  /// -- Categories
                  Padding(
                    padding: EdgeInsets.only(left: MSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// Heading
                        MSectionHeading(
                          title: 'Danh mục',
                          showActionButton: false,
                          textColor: MColors.white,
                        ),
                        SizedBox(height: MSizes.spaceBtwItems),

                        /// Categories
                        MHomeCategories()
                      ],
                    ),
                  )
                ],
              ),
            ),

            /// Body
            Padding(
                padding: EdgeInsets.all(MSizes.defaultSpace),
                child: Column(
                  children: [
                    /// -- Promo Slider
                    MPromoSlider(
                      banners: [
                        MImages.promoBanner4,
                        MImages.promoBanner1,
                        MImages.promoBanner3,
                      ],
                    ),
                    SizedBox(height: MSizes.spaceBtwSections),

                    /// -- Popular Product
                    MProductCardVertical()
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
