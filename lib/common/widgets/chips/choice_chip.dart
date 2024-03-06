import 'package:flutter/material.dart';
import 'package:sportshop/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/helpers/helper_functions.dart';

class MChoiceChip extends StatelessWidget {
  const MChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;
  @override
  Widget build(BuildContext context) {
    final isColor = MHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? MColors.white : null),
        avatar: isColor
            ? MCircularContainer(
                width: 50,
                height: 50,
                backgroundColor: MHelperFunctions.getColor(text)!)
            : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
        shape: isColor ? const CircleBorder() : null,
        backgroundColor: isColor ? MHelperFunctions.getColor(text)! : null,
      ),
    );
  }
}
