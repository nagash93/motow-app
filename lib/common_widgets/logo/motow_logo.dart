import 'package:flutter/material.dart';
import 'package:motow_app/constants/styles/style_shared.dart';

class MotoLogo extends StatelessWidget {
  const MotoLogo({Key? key, this.color}) : super(key: key);

  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      'MoTow',
      style: TextStyle(
        fontSize: 45,
          color: color ?? ColorApp.black),
    );
  }
}
