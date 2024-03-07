import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportshop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/helpers/helper_functions.dart';

class MSingleAddress extends StatelessWidget {
  const MSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;
  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return MRoundedContainer(
      showBorder: true,
      padding: const EdgeInsets.all(MSizes.md),
      width: double.infinity,
      backgroundColor: selectedAddress
          ? MColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? MColors.darkGrey
              : MColors.grey,
      margin: const EdgeInsets.only(bottom: MSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(selectedAddress ? Iconsax.tick_circle5 : null,
                color: selectedAddress
                    ? dark
                        ? MColors.light
                        : MColors.dark
                    : null),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hoàng Minh',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: MSizes.sm / 2),
              const Text(
                '(+84) 852 099 497',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: MSizes.sm / 2),
              const Text(
                '123 Sư Vạn Hạnh, Q10, HCM',
                softWrap: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
