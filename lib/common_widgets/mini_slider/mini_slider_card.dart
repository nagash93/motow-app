import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:motow_app/common_widgets/loading_widget/loading_widget.dart';
import 'package:motow_app/features/main/model/mini_slider_item_model.dart';

class MiniSliderCard extends StatelessWidget {
  const MiniSliderCard({Key? key,this.item}) : super(key: key);
  final MiniSliderItem? item;


  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: item?.urlImage??'',
      imageBuilder: (context, imageProvider) => Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,),
        ),
      ),
      placeholder: (context, url) => const LoadingWidget(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );

  }
}
