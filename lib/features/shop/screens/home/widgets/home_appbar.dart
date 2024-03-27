import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sportshop/common/widgets/appbar/appbar.dart';
import 'package:sportshop/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:sportshop/common/widgets/shimmer/shimmer.dart';
import 'package:sportshop/features/personalization/controllers/user_controller.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/contants/text_string.dart';

class MHomeAppBar extends StatelessWidget {
  const MHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return MAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(MTexts.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: MColors.grey)),
          Obx(() {
            if (controller.profileLoading.value) {
              //* Display a shimmer loader while user profile being loaded
              return const MShimmerEffect(width: 80, height: 80);
            } else {
              return Text(controller.user.value.fullName,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .apply(color: MColors.white));
            }
          }),
        ],
      ),
      actions: [
        MCartCounterIcon(
          onPressed: () {},
          iconColor: MColors.white,
        ),
      ],
    );
  }
}
