import 'package:flutter/material.dart';
import 'package:motow_app/common_widgets/item_tow/item_tow_horizontal.dart';
import 'package:motow_app/common_widgets/simple_app_bar/simple_app_bar.dart';
import 'package:motow_app/routing/route_paths.dart';

class ListSearchView extends StatelessWidget {
  const ListSearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const SimpleAppBar(
        title: 'Favoritos',
    ),
    body: ListView.builder(
    itemCount: 6, itemBuilder: (context, i) =>  ItemTowHorizontal(
      onTap: ()=>Navigator.pushNamed(context, RoutePaths.productDetail),
    )),
    );
  }
}
