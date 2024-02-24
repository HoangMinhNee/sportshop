import 'package:flutter/material.dart';
import 'package:sportshop/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:sportshop/utils/contants/colors.dart';

import '../curved_edges/curved_edges_widget.dart';

class MPrimaryHeaderContainer extends StatelessWidget {
  const MPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MCurvedEdgeWidget(
      child: Container(
        color: MColors.primary,
        padding: const EdgeInsets.only(bottom: 0),
        child: Stack(
          children: [
            /// Background Custom Shapes
            Positioned(
              top: -150,
              right: -250,
              child: MCircularContainer(
                  backgroundColor: MColors.textWhite.withOpacity(0.1)),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: MCircularContainer(
                  backgroundColor: MColors.textWhite.withOpacity(0.1)),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
