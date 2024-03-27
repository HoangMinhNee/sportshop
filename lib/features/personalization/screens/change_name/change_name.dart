import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportshop/common/widgets/appbar/appbar.dart';
import 'package:sportshop/features/personalization/controllers/update_name_controller.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/contants/text_string.dart';
import 'package:sportshop/utils/validator/validation.dart';

class ChangeName extends StatelessWidget {
  const ChangeName({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UpdateNameController());
    return Scaffold(
      //* Custom Appbar
      appBar: MAppBar(
        showBackArrow: true,
        title: Text('Thay đổi tên',
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Padding(
        padding: const EdgeInsets.all(MSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //* Headings
            Text(
              'Tên này sẽ xuất hiện trên một số trang.',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: MSizes.spaceBtwSections),

            //* Text field and Button
            Form(
                key: controller.updateUserNameFormKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: controller.firstName,
                      validator: (value) =>
                          MValidator.validateEmptyText('Họ', value),
                      expands: false,
                      decoration: const InputDecoration(
                          labelText: MTexts.firstName,
                          prefixIcon: Icon(Iconsax.user)),
                    ),
                    const SizedBox(height: MSizes.spaceBtwInputFields),
                    TextFormField(
                      controller: controller.lastName,
                      validator: (value) =>
                          MValidator.validateEmptyText('Tên', value),
                      expands: false,
                      decoration: const InputDecoration(
                          labelText: MTexts.lastName,
                          prefixIcon: Icon(Iconsax.user)),
                    )
                  ],
                )),
            const SizedBox(height: MSizes.spaceBtwSections),

            //* Save Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => controller.updateUserName(),
                  child: const Text('Lưu')),
            )
          ],
        ),
      ),
    );
  }
}
