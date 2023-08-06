import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:motow_app/common_widgets/custom_card/custom_card.dart';
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
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            _item(text: 'Si yo choco'),
            _item(text: 'Me chocan'),
            _item(text: 'Me roban la moto'),
            _item(text: 'Dañan mi moto'),
          ],
        ),
      ),
      bottomNavigationBar: const CustomCard(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Wrap(
         children: [
           Text('La informacion de esta seccion entregada por Protección Legal Motociclista',
           textAlign: TextAlign.center,),
          // Image.asset(Assets.iconPlmotos)
         ],
        )
      ),
    );
  }

  Widget _item({String? text, VoidCallback? onTap}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecarationShared.boxBorderRaidus
          .copyWith(border: Border.all(color: ColorApp.black)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.motorcycle_outlined, size: 50, color: ColorApp.black),
          Text(
            text ?? '',
            style: ThemeText.simpleText,
          ),
        ],
      ),
    );
  }
}
