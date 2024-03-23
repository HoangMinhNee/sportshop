import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportshop/common/widgets/appbar/appbar.dart';
import 'package:sportshop/utils/contants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppBar(
        showBackArrow: true,
        title: Text('Thêm địa chỉ mới'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.user), labelText: 'Tên'),
                ),
                const SizedBox(height: MSizes.spaceBtwInputFields),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.mobile), labelText: 'SĐT'),
                ),
                const SizedBox(height: MSizes.spaceBtwInputFields),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.building_31),
                      labelText: 'Số nhà, tên đường'),
                ),
                const SizedBox(height: MSizes.spaceBtwInputFields),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.building),
                      labelText: 'Quận (Huyện)'),
                ),
                const SizedBox(height: MSizes.spaceBtwInputFields),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.building),
                      labelText: 'Tỉnh (Thành phố)'),
                ),
                const SizedBox(height: MSizes.spaceBtwInputFields),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: () {}, child: const Text('Lưu')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
