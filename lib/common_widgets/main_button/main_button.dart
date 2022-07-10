import 'package:flutter/material.dart';
import 'package:motow_app/constants/color_app.dart';

class MainButton extends StatelessWidget {
  const MainButton({Key? key,this.text,this.prefixIcon,this.suffixIcon,this.onTap}) : super(key: key);
  final String? text;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        decoration: BoxDecoration(
          color: ColorApp.black,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(prefixIcon,color: ColorApp.white,),
            Text(text??'',
              style: const TextStyle(
              color: ColorApp.white,
            ),),
            Icon(suffixIcon,color: ColorApp.white,),
          ],
        ),
      ),
    );
  }
}
