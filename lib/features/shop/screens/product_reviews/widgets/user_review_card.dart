import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:sportshop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sportshop/common/widgets/products/ratings/rating_indicator.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/contants/image_strings.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage(MImages.userProfileImage2)),
                const SizedBox(width: MSizes.spaceBtwItems),
                Text('Minh', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(width: MSizes.spaceBtwItems),

        //* Review
        Row(
          children: [
            const MRatingBarIndicator(rating: 4),
            const SizedBox(width: MSizes.spaceBtwItems),
            Text('1-1-2023', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: MSizes.spaceBtwItems),
        const ReadMoreText(
          'Đa dạng trong mục đích sử dụng, từ chạy tốc độ vừa phải cho đến tốc độ cao, thậm chí chạy đua. Phù hợp nhất là các bài chạy tốc độ. Quãng đường từ chạy ngắn cho đến chạy đường dài.',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: ' ẩn bớt',
          trimCollapsedText: ' xem thêm',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: MColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: MColors.primary),
        ),
        const SizedBox(height: MSizes.spaceBtwItems),

        //* Company Reviews
        MRoundedContainer(
          backgroundColor: dark ? MColors.darkerGrey : MColors.grey,
          child: Padding(
            padding: EdgeInsets.all(MSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sport Store",
                        style: Theme.of(context).textTheme.bodyLarge),
                    Text("1-1-2023",
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: MSizes.spaceBtwItems),
                const ReadMoreText(
                  'Đa dạng trong mục đích sử dụng, từ chạy tốc độ vừa phải cho đến tốc độ cao, thậm chí chạy đua. Phù hợp nhất là các bài chạy tốc độ. Quãng đường từ chạy ngắn cho đến chạy đường dài.',
                  trimLines: 1,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' ẩn bớt',
                  trimCollapsedText: ' xem thêm',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: MColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: MColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: MSizes.spaceBtwSections),
      ],
    );
  }
}
