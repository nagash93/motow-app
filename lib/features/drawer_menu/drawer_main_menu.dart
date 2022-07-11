import 'package:flutter/material.dart';
import 'package:motow_app/common_widgets/logo/motow_logo.dart';
import 'package:motow_app/routing/route_paths.dart';

class DrawerMainMenu extends StatelessWidget {
  const DrawerMainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        const DrawerHeader(child: MotoLogo()),
        ListTile(
          leading: const Icon(
            Icons.home,
          ),
          title: const Text('Page 1'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.add,
          ),
          title: const Text('Agregar Datos'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.help,
          ),
          title: const Text('Datos de ayuda'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.star,
          ),
          title: const Text('Favoritos'),
          onTap: () {
            Navigator.pushNamed(context, RoutePaths.favorites);
          },
        ),
      ],
    ));
  }
}
