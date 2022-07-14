import 'package:flutter/material.dart';
import 'package:motow_app/constants/styles/color_app.dart';

abstract class ThemeText {
  static const TextStyle simpleText =
      TextStyle(fontFamily: 'JosefinSans', color: ColorApp.black, fontSize: 16);
  static const TextStyle subTitle =
      TextStyle(fontFamily: 'JosefinSans', color: ColorApp.black, fontSize: 20);
  static const TextStyle title =
      TextStyle(fontFamily: 'JosefinSans', color: ColorApp.black, fontSize: 25);
  static const TextStyle simpleTextSemiBold = TextStyle(
      fontFamily: 'JosefinSans',
      color: ColorApp.black,
      fontSize: 20,
      fontWeight: FontWeight.w400);
}
