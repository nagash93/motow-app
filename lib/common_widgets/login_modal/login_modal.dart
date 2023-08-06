import 'package:flutter/material.dart';
import 'package:motow_app/common_widgets/main_button/main_button.dart';

class LoginModal {
  openMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
          /*    HookConsumer(
                builder: (
                  BuildContext context,
                  WidgetRef ref,
                  Widget? child,
                ) {*/


                   Column(
                    children: [
                      MainButton(
                        text: 'Google',
                        onTap: () {
                          // controller.signInWithGoogle();
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      MainButton(
                        text: 'Apple',
                        onTap: () {
                          // controller.signInWithApple();
                        },
                      ),
                    ],
                
             /*   },*/
              ),
            ],
          ),
        );
      },
    );
  }
}
