import 'package:flutter/material.dart';
import 'package:motow_app/constants/styles/color_app.dart';

class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SimpleAppBar({Key? key, this.title, this.actions}) : super(key: key);

  final String? title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorApp.white,
      toolbarHeight: 60,
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      elevation: 0,
      title: Text(
        title ?? '',
        style: const TextStyle(color: ColorApp.black),
      ),
      centerTitle: true,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Ink(
          decoration: const ShapeDecoration(
            color: ColorApp.ultraLightGray,
            shape: CircleBorder(),
          ),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: ColorApp.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
