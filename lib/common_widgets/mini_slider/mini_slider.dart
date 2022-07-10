import 'package:flutter/material.dart';
import 'package:motow_app/constants/color_app.dart';

class MiniSlider extends StatelessWidget {
  const MiniSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
      margin: EdgeInsets.all(10),
      child: PageView(
        children: [
          _itemSlider(),
          _itemSlider(),
          _itemSlider(),
        ] ,
      ));
  }

  Widget _itemSlider(){
    return Container(
      width: double.infinity,
      height: 150,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: ColorApp.grey,
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}
