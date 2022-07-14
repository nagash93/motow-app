import 'package:flutter/material.dart';
import 'package:motow_app/constants/styles/style_shared.dart';
import 'package:motow_app/routing/route_paths.dart';

class MiniAvatarUser extends StatelessWidget {
  const MiniAvatarUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>Navigator.pushNamed(context, RoutePaths.register),
      child: Container(
        width: 40,
        height: 40,
      margin: const EdgeInsets.all(10),
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: ColorApp.black
        ),
      ),
    );
  }
}
