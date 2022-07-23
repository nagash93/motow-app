import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:motow_app/common_widgets/main_button/main_button.dart';
import 'package:motow_app/features/register/controller/register_controller.dart';

class LoginModal {
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
                children: [
                  HookConsumer(
                    builder: (
                      BuildContext context,
                      WidgetRef ref,
                      Widget? child,
                    ) {
                      return MainButton(
                        text: 'Google',
                        onTap: () {
                          ref.read(registerController.notifier).getUser();
                        },
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const MainButton(
                    text: 'Apple',
                  ),
                ],
              ));
        });
  }
}
