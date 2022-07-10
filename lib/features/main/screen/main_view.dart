import 'package:flutter/material.dart';
import 'package:motow_app/common_widgets/avatar_user/mini_avatar_user.dart';
import 'package:motow_app/common_widgets/item_tow/item_tow.dart';
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
              onTap: () => debugPrint('test'),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: const [
                  Expanded(
                      child: Text('Ultimos Agregdos',
                          style: TextStyle(
                            fontSize: 16,
                          ))),
                  Text('Ver Todos',
                      style: TextStyle(
                        fontSize: 16,
                      ))
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 1 / 1,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: 10,
                  itemBuilder: (BuildContext ctx, index) {
                    return const ItemTow();
                  }),
            )
          ],
        ));
  }
}
