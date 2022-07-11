import 'package:flutter/material.dart';
import 'package:motow_app/common_widgets/item_tow/item_tow_horizontal.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 6, itemBuilder: (context, i) => const ItemTowHorizontal()),
    );
  }
}
