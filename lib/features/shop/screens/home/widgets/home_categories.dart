import 'package:flutter/material.dart';
import 'package:sportshop/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:sportshop/utils/contants/image_strings.dart';

class MHomeCategories extends StatelessWidget {
  const MHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return MVerticalImageText(
            image: MImages.shoeIcon,
            title: 'Giày',
            onTap: () {},
          );
        },
      ),
    );
  }
}
