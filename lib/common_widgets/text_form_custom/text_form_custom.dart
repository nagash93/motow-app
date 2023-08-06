import 'package:flutter/material.dart';
import 'package:motow_app/constants/styles/style_shared.dart';

class TextFormCustom extends StatelessWidget {
  const TextFormCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:const  EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: ColorApp.lightGray,
            borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
          cursorColor: ColorApp.black,
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Gruas Rodrigues',),
        ));
  }
}
