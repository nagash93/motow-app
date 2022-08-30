import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';

import 'package:motow_app/common_widgets/drawer_menu/drawer_main_menu.dart';
import 'package:motow_app/common_widgets/item_tow/item_tow.dart';
import 'package:motow_app/common_widgets/main_app_bar/main_app_bar.dart';
import 'package:motow_app/common_widgets/main_button/main_button.dart';
import 'package:motow_app/common_widgets/mini_slider/mini_slider.dart';
import 'package:motow_app/constants/styles/style_shared.dart';
import 'package:motow_app/routing/route_paths.dart';

class MainView extends StatelessWidget {
  MainView({Key? key}) : super(key: key);

  //ZoomDrawerController controller = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      drawer: const DrawerMainMenu(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const MiniSlider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: MainButton(
                prefixIcon: Icons.search,
                text: 'Buscar',
                onTap: () {
                  Navigator.pushNamed(context, RoutePaths.search);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: const [
                  Expanded(
                    child: Text(
                      'Ultimos Agregados',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Text(
                    'Ver Todos',
                    style: TextStyle(fontSize: 16, color: ColorApp.grey),
                  )
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 1 / 1,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 20,
                ),
                itemCount: 10,
                itemBuilder: (BuildContext ctx, index) {
                  return const ItemTow();
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  _mainScren(ZoomDrawerController controller) {
    return Scaffold(
        appBar: MainAppBar(
          controller: controller,
        ),
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
