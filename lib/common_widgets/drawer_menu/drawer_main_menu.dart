import 'package:flutter/material.dart';
import 'package:motow_app/common_widgets/drawer_menu/item_menu.dart';
import 'package:motow_app/common_widgets/logo/motow_logo.dart';
import 'package:motow_app/constants/styles/style_shared.dart';
import 'package:motow_app/routing/route_paths.dart';

class DrawerMainMenu extends StatelessWidget {
  const DrawerMainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: ColorApp.black,
        child: ListView(
          children: [
            const DrawerHeader(child: MotoLogo(color: ColorApp.white,)),
            ItemMenuDrawer(
              title: 'Datos de ayuda',
              icon: Icons.help_outline,
              onTap: () {
                Navigator.pushNamed(context, RoutePaths.helpScreen);
              },
            ),
            ItemMenuDrawer(
              title: 'Favoritos',
              icon: Icons.star,
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, RoutePaths.favorites);
              },
            ),
            ItemMenuDrawer(
              title: 'Agregar Anuncios',
              icon: Icons.add,
              onTap: () {
                Navigator.pushNamed(context, RoutePaths.addScreen);
              },
            ),
            ItemMenuDrawer(
              title: 'Preguntas Frecuentes',
              icon: Icons.question_answer,
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ));
  }
}
