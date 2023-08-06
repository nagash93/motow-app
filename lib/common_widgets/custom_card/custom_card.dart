import 'package:flutter/cupertino.dart';
import 'package:motow_app/constants/styles/box_decoration_shared.dart';

import '../../constants/styles/color_app.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.child, this.margin});
  final Widget child;
  final EdgeInsets? margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: margin ?? const EdgeInsets.all(0),
      decoration:  BoxDecarationShared.boxBorderRaidus.copyWith(
        border: Border.all(color: ColorApp.black.withOpacity(0.2)),
      ),
      child: child,
    );
  }
}
