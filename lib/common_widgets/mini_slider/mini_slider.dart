import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:motow_app/constants/styles/style_shared.dart';
import 'package:motow_app/features/main/controller/advertising_controller.dart';

class MiniSlider extends HookConsumerWidget {
  const MiniSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = usePageController();
    final selectedIndex = useState(0);

    final state = ref.watch(advertisingController);
    final controller = ref.read(advertisingController.notifier);

    return SizedBox(
      height: 170,
      child: Stack(
        alignment: const Alignment(-0.9, 0.8),
        children: [
          /*PageView(
            controller: pageController,
            children: [
              _itemSlider(),
              _itemSlider(),
              _itemSlider(),
            ],
            onPageChanged: (page) {
              selectedIndex.value = page;
            },
          ),*/

          state.when(
            data: (data) => PageView(
              controller: pageController,
              children: data.map((value) => _itemSlider()).toList(),
            ),
            error: (e, st) => Text('Error: $e'),
            loading: () => const CircularProgressIndicator(),
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
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemSlider() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorApp.grey,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }

  Widget _dotIndicator(isSelected) {
    return Container(
      width: 15,
      height: 15,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: isSelected ? ColorApp.black : ColorApp.lightGray,
        shape: BoxShape.circle,
        border: Border.all(color: ColorApp.lightGray, width: 1),
      ),
    );
  }
}
