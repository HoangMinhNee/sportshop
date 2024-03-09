import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportshop/common/widgets/appbar/appbar.dart';
import 'package:sportshop/features/personalization/screens/address/add_new_address.dart';
import 'package:sportshop/features/personalization/screens/address/widgets/single_address.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/contants/sizes.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: MColors.primary,
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        child: const Icon(
          Iconsax.add,
          color: MColors.white,
        ),
      ),
      appBar: MAppBar(
        showBackArrow: true,
        title: Text(
          'Địa Chỉ',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              MSingleAddress(selectedAddress: true),
              MSingleAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
