import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:motow_app/constants/styles/style_shared.dart';

import '../../features/main/model/mini_slider_item_model.dart';

class MiniSlider extends HookWidget {
   MiniSlider({Key? key, required this.listMiniSliderItem})
      : super(key: key);

  final List<MiniSliderItem> listMiniSliderItem;
  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final selectedIndex = useState(0);
    return SizedBox(
        height: 170,
        child: Stack(
          alignment: const Alignment(-1, 0.95),
          children: [
            PageView.builder(
              controller: pageController,
              itemCount: listMiniSliderItem.length,
              itemBuilder: (context, index) {
                return _itemSlider(listMiniSliderItem[index]);
              },
              onPageChanged: (page) {
                selectedIndex.value = page;
              },
            ),
            if(listMiniSliderItem.length > 1)
            SizedBox(
                width: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...listMiniSliderItem
                        .map((e) => _dotIndicator(selectedIndex.value ==
                            listMiniSliderItem.indexOf(e)))
                        .toList(),
                  ],
                ))
          ],
        ));
  }

  Widget _itemSlider(MiniSliderItem item) {

    return CachedNetworkImage(
      imageUrl: item.urlImage??'',
      imageBuilder: (context, imageProvider) => Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
             ),
        ),
      ),
      placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }

  Widget _dotIndicator(bool isSelected) {
    return Container(
      width: 15,
      height: 15,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: isSelected ? ColorApp.black : ColorApp.lightGray,
          shape: BoxShape.circle,
          border: Border.all(color: ColorApp.lightGray, width: 1)),
    );
  }
}
