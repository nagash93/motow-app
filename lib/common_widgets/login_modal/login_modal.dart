import 'package:flutter/material.dart';
import 'package:motow_app/common_widgets/main_button/main_button.dart';

class LoginModal{

  openMenu(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        builder: (context) {
          return Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  MainButton(
                    text: 'Google',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MainButton(
                    text: 'Apple',
                  ),
                ],
              ));
        });
  }
}