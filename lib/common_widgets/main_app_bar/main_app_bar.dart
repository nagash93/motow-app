import 'package:flutter/material.dart';
import 'package:motow_app/common_widgets/avatar_user/mini_avatar_user.dart';
import 'package:motow_app/constants/styles/style_shared.dart';

import '../location_widget/location_widget.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget{

  const MainAppBar({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorApp.white,
      toolbarHeight: 60,
      elevation: 0.1,
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      title: Row(
        children: [
          LocationWidget()
        ],
      ),
      actions: const [
        Icon(Icons.notifications_none_outlined,color: ColorApp.black,),
        MiniAvatarUser(),
      ],
    );
  }

  @override
  Size get preferredSize =>  const Size.fromHeight(60);
}
