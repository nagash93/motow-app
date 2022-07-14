import 'package:flutter/material.dart';
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
            _itemMenu(
              title: 'Datos de ayuda',
              icon: Icons.help_outline,
              onTap: () {
                Navigator.pushNamed(context, RoutePaths.helpScreen);
              },
            ),
            _itemMenu(
              title: 'Favoritos',
              icon: Icons.star,
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, RoutePaths.favorites);
              },
            ),
            _itemMenu(
              title: 'Agregar Anuncios',
              icon: Icons.add,
              onTap: () {
                Navigator.pushNamed(context, RoutePaths.addScreen);
              },
            ),
            _itemMenu(
              title: 'Preguntas Frecuentes',
              icon: Icons.question_answer,
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ));
  }

  Widget _itemMenu({String? title, IconData? icon, VoidCallback? onTap}) {
    return ListTile(
      leading:  Icon(
        icon,
        color: ColorApp.white,
      ),
      title:  Text(title??'',
      style: const TextStyle(color: ColorApp.white,
      fontSize: 18)),
      onTap: onTap,
    );
  }
}
