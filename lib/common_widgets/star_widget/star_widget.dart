import 'package:flutter/material.dart';
import 'package:motow_app/constants/styles/theme_text.dart';

class StartWidget extends StatelessWidget {
  const StartWidget({Key? key,this.star}) : super(key: key);

  final double? star;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(star.toString(),
        style: ThemeText.subTitle,),
        const Icon(Icons.star)
      ],
    );
  }
}
