import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:motow_app/common_widgets/simple_app_bar/simple_app_bar.dart';
import 'package:motow_app/constants/styles/style_shared.dart';
import 'package:motow_app/generated/assets.dart';

class HelpView extends StatelessWidget {
  const HelpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(
        title: '¿Que hacer si .. ?',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            SvgPicture.asset(Assets.svgTowing,
            height: 200,),
            _item(text: 'Si yo choco'),
            _item(text: 'Me chocan'),
            _item(text: 'Me roban la moto'),
            _item(text: 'Dañan mi moto'),
          ],
        ),
      ),
      bottomNavigationBar:  const Card(
        child: Wrap(
         children: [
           Text('La informacion de esta seccion entregada por rotección Legal Motociclista',
           textAlign: TextAlign.center,),
          // Image.asset(Assets.iconPlmotos)
         ],
        )
      ),
    );
  }

  Widget _item({String? text, VoidCallback? onTap}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecarationShared.boxBorderRaidus
          .copyWith(border: Border.all(color: ColorApp.black)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text ?? '',
            style: ThemeText.simpleText,
          ),
          Ink(
              decoration: const ShapeDecoration(
                color: ColorApp.ultraLightGray,
                shape: CircleBorder(),
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_forward,
                  color: ColorApp.black,
                ),
                onPressed: onTap,
              )),
        ],
      ),
    );
  }
}
