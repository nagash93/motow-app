import 'package:flutter/material.dart';
import 'package:motow_app/constants/styles/color_app.dart';

class MiniSliderIndicator extends StatelessWidget {
  const MiniSliderIndicator({Key? key, required this.isSelected})
      : super(key: key);
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      width: isSelected ? 15 : 10,
      height: isSelected ? 15 : 10,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: isSelected ? ColorApp.black : ColorApp.lightGray,
        shape: BoxShape.circle,
        border: Border.all(color: ColorApp.lightGray, width: 1),
      ),
    );
  }
}
