import 'package:flutter/material.dart';
import 'package:motow_app/constants/color_app.dart';

class LabelTextForm extends StatelessWidget {
  const LabelTextForm({Key? key,this.text}) : super(key: key);
 final String? text;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Text(text ?? '',
              style: const TextStyle(
                  fontSize: 25,
                  color: ColorApp.black,
                  fontWeight: FontWeight.w500))
        ],
      ),
    );
  }
}
