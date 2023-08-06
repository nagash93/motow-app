import 'package:flutter/material.dart';
import 'package:motow_app/constants/styles/style_shared.dart';

class TagText extends StatelessWidget {
   const TagText({Key? key,this.text,this.isSelected=false}) : super(key: key);

  final String? text;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: isSelected?ColorApp.black:ColorApp.white,
        border: Border.all(color: ColorApp.black,width: 1),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Center(child: Text(text??'',
      style: TextStyle(
         color: isSelected?ColorApp.white:ColorApp.black
      ),)),
    );
  }
}
