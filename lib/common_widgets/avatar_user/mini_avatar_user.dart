import 'package:flutter/material.dart';
import 'package:motow_app/constants/color_app.dart';

class MiniAvatarUser extends StatelessWidget {
  const MiniAvatarUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
    margin: const EdgeInsets.all(10),
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: ColorApp.black
      ),
    );
  }
}
