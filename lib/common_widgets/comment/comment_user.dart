import 'package:flutter/material.dart';
import 'package:motow_app/common_widgets/avatar_user/mini_avatar_user.dart';

import '../../constants/styles/style_shared.dart';

class CommentUser extends StatelessWidget {
  const CommentUser({Key? key,this.isReverse=false}) : super(key: key);
 final bool isReverse;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!isReverse) const MiniAvatarUser(),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecarationShared.boxBorderRaidus
                .copyWith(border: Border.all(color: ColorApp.black, width: 1)),
            child: const Text(
              'Mensaje de  muestra',
              style: ThemeText.simpleText,
            ),
          ),
        ),
        if (isReverse) const MiniAvatarUser(),
      ],
    );
  }
}
