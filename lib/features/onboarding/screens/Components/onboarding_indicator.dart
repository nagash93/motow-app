import 'package:flutter/material.dart';
import 'package:motow_app/constants/color_app.dart';

class OnboardingIndicator extends StatelessWidget {
  const OnboardingIndicator({Key? key,this.selectedIndex=0}) : super(key: key);

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _dotIndicator(selectedIndex==0),
        _dotIndicator(selectedIndex==1),
        _dotIndicator(selectedIndex==2),
        _dotIndicator(selectedIndex==3),
      ],

    );
  }
  Widget _dotIndicator(bool isSelected){

    return Container(
      width: 25,
      height: 25,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: isSelected? ColorApp.black:ColorApp.lightGray,
        shape: BoxShape.circle,
        border: Border.all(color: ColorApp.lightGray,width: 1)
      ),
    );
  }

}
