import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:motow_app/constants/styles/style_shared.dart';
import 'package:motow_app/generated/assets.dart';

class OnBoardingItem extends StatelessWidget {
  final String? primaryText;
  final String? secondaryText;
  final Icon? icon;
  final String? vector;
  final bool blackBackground;

  const OnBoardingItem({
    Key? key,
    this.primaryText,
    this.secondaryText,
    this.icon,
    this.vector,
    this.blackBackground = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return blackBackground
        ? Container(
            color: ColorApp.black,
            child: Center(
              child: _titleBox(primaryText ?? '', true),
            ),
          )
        : Container(
            color: ColorApp.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _titleBox(primaryText ?? ''),
                Stack(
                  alignment: const Alignment(0, 0),
                  children: [
                    SvgPicture.asset(vector ?? Assets.svgOnboarding1),
                    const Icon(
                      Icons.motorcycle,
                      size: 150,
                      color: ColorApp.grey,
                    )
                  ],
                ),
                _titleBox(secondaryText ?? ''),
              ],
            ),
          );
  }

  Widget _titleBox(String text, [blackBackground = false]) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: blackBackground ? ColorApp.lightGray : ColorApp.black,
          fontSize: 30,
        ),
      ),
    );
  }
}
