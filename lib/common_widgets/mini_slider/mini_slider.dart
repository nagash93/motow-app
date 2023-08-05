import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:motow_app/constants/styles/style_shared.dart';

class MiniSlider extends HookWidget {
  const MiniSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final selectedIndex = useState(0);
    return SizedBox(
        height: 170,
        child: Stack(
          alignment: const Alignment(-0.9, 0.8),
          children: [
            PageView(
              controller: pageController,
              children: [
                _itemSlider(),
                _itemSlider(),
                _itemSlider(),
              ],
              onPageChanged: (page) {
                selectedIndex.value = page;
              },
            ),
            SizedBox(
                width: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _dotIndicator(selectedIndex.value == 0),
                    _dotIndicator(selectedIndex.value == 1),
                    _dotIndicator(selectedIndex.value == 2),
                  ],
                ))
          ],
        ));
  }

  Widget _itemSlider() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: ColorApp.grey, borderRadius: BorderRadius.circular(10)),
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
