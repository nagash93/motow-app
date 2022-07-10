import 'package:flutter/material.dart';
import 'package:motow_app/common_widgets/avatar_user/mini_avatar_user.dart';
import 'package:motow_app/common_widgets/main_app_bar/main_app_bar.dart';
import 'package:motow_app/common_widgets/main_button/main_button.dart';
import 'package:motow_app/common_widgets/mini_slider/mini_slider.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(),
      body: Column(
        children: [
          const MiniSlider(),
          MainButton(
            prefixIcon: Icons.search,
            text: 'Buscar',
            onTap: ()=>debugPrint('test'),
          ),
          MainButton(
            prefixIcon: Icons.search,
            text: 'Buscar',
            suffixIcon: Icons.search,
            onTap: ()=>debugPrint('test'),
          ),
          MainButton(
            text: 'Buscar',
            onTap: ()=>debugPrint('test'),
          ),
          MiniAvatarUser(),
        ],
      )
    );
  }
}
