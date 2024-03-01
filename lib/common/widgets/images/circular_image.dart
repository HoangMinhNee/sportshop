import 'package:flutter/material.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/contants/image_strings.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/helpers/helper_functions.dart';

class MCircularImage extends StatelessWidget {
  const MCircularImage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkImage = false,
    this.overlayColor,
    this.backgroundColor,
    this.width = 56,
    this.height = 56,
    this.padding = MSizes.sm,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: backgroundColor ??
              (MHelperFunctions.isDarkMode(context)
                  ? MColors.black
                  : MColors.white),
          borderRadius: BorderRadius.circular(100)),
      child: Image(
        fit: fit,
        image: isNetworkImage
            ? NetworkImage(image)
            : AssetImage(image) as ImageProvider,
        color: overlayColor,
      ),
    );
  }
}
