import 'package:flutter/material.dart';
import 'package:sportshop/common/widgets/appbar/appbar.dart';
import 'package:sportshop/common/widgets/products/ratings/rating_indicator.dart';
import 'package:sportshop/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:sportshop/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:sportshop/utils/contants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //* -- Appbar
      appBar:
          const MAppBar(title: Text('Reviews & Ratings'), showBackArrow: true),

      //* -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Ratings and reviews are verified and are from people who use the same type of device that you use."),
              const SizedBox(height: MSizes.spaceBtwItems),

              //* Overall Product Ratings
              const MOverallProductRating(),
              const MRatingBarIndicator(rating: 3.5),
              Text("12,123", style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: MSizes.spaceBtwSections),

              //* User Review List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
