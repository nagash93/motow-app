import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:motow_app/common_widgets/avatar_user/mini_avatar_user.dart';
import 'package:motow_app/constants/styles/style_shared.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget{
  MainAppBar({Key? key,  this.controller }) : super(key: key);

  final ZoomDrawerController? controller;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorApp.white,
      toolbarHeight: 60,
      elevation: 0.2,
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      title: const Text('MoTow',style:TextStyle(
        color:  ColorApp.black
      ),),
      centerTitle: true,
      leading:  IconButton(
        icon:  const Icon(Icons.menu,color: ColorApp.black,),
        onPressed: () {
          //controller.open!();
          Scaffold.of(context).openDrawer();
        },
      ),
      actions: const [
        MiniAvatarUser(),
      ],
    );
  }

  @override
  Size get preferredSize =>  const Size.fromHeight(60);
}
