import 'package:flutter/material.dart';
import 'package:motow_app/common_widgets/avatar_user/mini_avatar_user.dart';
import 'package:motow_app/common_widgets/simple_app_bar/simple_app_bar.dart';
import 'package:motow_app/common_widgets/star_widget/star_widget.dart';

import 'package:motow_app/constants/styles/style_shared.dart';

class ItemDetailView extends StatelessWidget {
  const ItemDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(
        title: 'Valpo Gruas',
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.favorite_border))
        ],
      ),
      body: Stack(
        alignment: const Alignment(0, 1),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ListView(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecarationShared.boxBorderRaidus
                      .copyWith(color: ColorApp.lightGray),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Valpo Gruas',
                        style: ThemeText.title,
                      ),
                      StartWidget(star: 4.5)
                    ],
                  ),
                ),
                const Text(
                  'Descripcion:',
                  style: ThemeText.subTitle,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed iaculis ex ut convallis molestie. Nunc ullamcorper sem nec lacus congue imperdiet. Etiam sed nunc ut sagittis porttitor. Nunc at arcu efficitur,sodales magna id, finibus mauris. Psemper tincidunt neque, eget cursus justofaucibus ac.",
                  style: ThemeText.simpleText,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Agregar un comentario:',
                  style: ThemeText.subTitle,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Comentarios:',
                  style: ThemeText.subTitle,
                ),
                const SizedBox(
                  height: 10,
                ),
                _commment(),
                _commment(isReverse: true),
                _commment(),
                _commment(isReverse: true),
                _commment(),
              ],
            ),
          ),
          Card(
            elevation: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                IconButton(onPressed: null, icon: Icon(Icons.phone)),
                IconButton(onPressed: null, icon: Icon(Icons.share)),
                IconButton(onPressed: null, icon: Icon(Icons.phone))
              ],
            ),
          ),
        ],
      ),
    );
  }

  _commment({bool isReverse = false}) {
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
