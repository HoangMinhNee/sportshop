import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportshop/common/widgets/appbar/appbar.dart';
import 'package:sportshop/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:sportshop/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:sportshop/common/widgets/icons/circular_icon.dart';
import 'package:sportshop/common/widgets/images/rounded_image.dart';
import 'package:sportshop/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:sportshop/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:sportshop/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/contants/image_strings.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/helpers/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //* - Product Image Slider
            MProductImageSlider(dark: dark),

            //* - Product Details
            const Padding(
              padding: EdgeInsets.only(
                  right: MSizes.defaultSpace,
                  left: MSizes.defaultSpace,
                  bottom: MSizes.defaultSpace),
              child: Column(
                children: [
                  //* - Rating & Share
                  MRatingAndShare(),

                  //* - Price, Title, Stock, Brand
                  MProductMetaData()

                  //* - Attributes
                  //* - Checkout Button
                  //* - Description
                  //* - Reviews
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
