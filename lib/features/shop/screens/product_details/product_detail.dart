import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:sportshop/common/widgets/texts/section_heading.dart';
import 'package:sportshop/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:sportshop/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:sportshop/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:sportshop/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:sportshop/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:sportshop/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/helpers/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: MBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //* - Product Image Slider
            MProductImageSlider(dark: dark),

            //* - Product Details
            Padding(
              padding: const EdgeInsets.only(
                  right: MSizes.defaultSpace,
                  left: MSizes.defaultSpace,
                  bottom: MSizes.defaultSpace),
              child: Column(
                children: [
                  //* - Rating & Share
                  const MRatingAndShare(),

                  //* - Price, Title, Stock, Brand
                  const MProductMetaData(),

                  //* - Attributes
                  const MProductAttributes(),
                  const SizedBox(height: MSizes.spaceBtwSections),

                  //* - Checkout Button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Checkout'))),
                  const SizedBox(height: MSizes.spaceBtwSections),

                  //* - Description
                  const MSectionHeading(
                      title: 'Mô tả', showActionButton: false),
                  const SizedBox(height: MSizes.spaceBtwItems),
                  const ReadMoreText(
                    'Giày Thể Thao Nike Air Zoom Pegasus 33 có lẽ là siêu phẩm giày chạy bộ được chờ đợt nhất năm 2016, Nike đã tích hợp những công nghệ tiên tiến nhất của hãng để tạo nên một trong những mẫu giày tốt nhất thế giới mà bạn không thể bỏ qua.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Xem thêm',
                    trimExpandedText: 'Ẩn bớt',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  //* - Reviews
                  const Divider(),
                  const SizedBox(height: MSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const MSectionHeading(
                          title: 'Đánh giá(123)', showActionButton: false),
                      IconButton(
                          onPressed: () =>
                              Get.to(() => const ProductReviewsScreen()),
                          icon: const Icon(Iconsax.arrow_right_3))
                    ],
                  ),
                  const SizedBox(height: MSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
