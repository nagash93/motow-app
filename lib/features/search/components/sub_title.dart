import 'package:flutter/material.dart';
import 'package:motow_app/constants/styles/style_shared.dart';

class SubTitle extends StatelessWidget {
  const SubTitle({Key? key, this.text}) : super(key: key);

  final String? text;
  @override
  Widget build(BuildContext context) {
    return Padding(
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
