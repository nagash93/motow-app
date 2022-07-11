import 'package:flutter/material.dart';
import 'package:motow_app/constants/color_app.dart';

class MotoLogo extends StatelessWidget {
  const MotoLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('MoTow',style:TextStyle(
        color:  ColorApp.black
    ),);
  }
}
