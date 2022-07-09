import 'package:flutter/material.dart';
import 'package:motow_app/common_widgets/main_button/main_button.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: MainButton(
          prefixIcon: Icons.search,
          text: 'Buscar',
        ),
      ),
    );
  }
}
