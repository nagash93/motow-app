import 'package:flutter/material.dart';

import '../../constants/styles/style_shared.dart';

class ItemMenuDrawer extends StatelessWidget {
  const ItemMenuDrawer({Key? key, this.title, this.icon, this.onTap})
      : super(key: key);

  final String? title;
  final IconData? icon;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: ColorApp.white,
      ),
      title: Text(title ?? '',
          style: const TextStyle(color: ColorApp.white, fontSize: 18)),
      onTap: onTap,
    );
  }
}
