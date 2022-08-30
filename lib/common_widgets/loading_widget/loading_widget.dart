import 'package:flutter/material.dart';
import 'package:motow_app/constants/styles/style_shared.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 50,
        height: 50,
        child: CircularProgressIndicator(
          color: ColorApp.lightGray,
        ),
      ),
    );
  }
}
