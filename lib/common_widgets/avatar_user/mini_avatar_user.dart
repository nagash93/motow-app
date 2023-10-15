import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:motow_app/constants/styles/style_shared.dart';
import 'package:motow_app/routing/route_paths.dart';

class MiniAvatarUser extends StatelessWidget {
  const MiniAvatarUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>context.pushNamed(RouteName.register),
      child: Container(
        width: 40,
        height: 40,
      margin: const EdgeInsets.all(10),
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Icon(Icons.person_outlined,color: ColorApp.black,)
      ),
    );
  }
}
