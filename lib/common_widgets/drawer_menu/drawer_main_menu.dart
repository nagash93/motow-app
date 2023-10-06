import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
        ),
        child: ListView(
          children: [
            const DrawerHeader(
              margin: EdgeInsets.zero,
              child: MotoLogo(
                color: ColorApp.white,
              ),
            ),
            ItemMenuDrawer(
              title: 'Datos de ayuda',
              icon: Icons.help_outline,
              onTap: () {
                context.pushNamed(RouteName.helpScreen);
              },
            ),
            ItemMenuDrawer(
              title: 'Favoritos',
              icon: Icons.star,
              onTap: () {
                context.pop(context);
                context.pushNamed( RouteName.favorites);
              },
            ),
            ItemMenuDrawer(
              title: 'Agregar Anuncios',
              icon: Icons.add,
              onTap: () {
                context.pushNamed(RoutePaths.addScreen);
              },
            ),
            ItemMenuDrawer(
              title: 'Preguntas Frecuentes',
              icon: Icons.question_answer,
              onTap: () {
                context.pop(context);
              },
            ),
          ],
        ));
  }
}
