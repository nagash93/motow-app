import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:collection/collection.dart';
import 'package:motow_app/common_widgets/loading_widget/loading_widget.dart';
import 'package:motow_app/common_widgets/mini_slider/mini_slider_card.dart';
import 'package:motow_app/common_widgets/mini_slider/mini_slider_indicator.dart';
import 'package:motow_app/constants/styles/style_shared.dart';
import 'package:motow_app/features/main/controller/advertising_controller.dart';

class MiniSlider extends HookConsumerWidget {
  const MiniSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = usePageController();
    final selectedIndex = useState(0);

    final state = ref.watch(advertisingController);

    return SizedBox(
      height: 170,
      child: state.when(
        data: (data) {
          return Stack(alignment: const Alignment(-0.9, 0.8), children: [
            PageView(
              controller: pageController,
              children: data.map((value) => MiniSliderCard(item: value)).toList(),
              onPageChanged: (page) {
                selectedIndex.value = page;
              },
            ),
            SizedBox(
              width: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: data.mapIndexed((index, element) {
                  return MiniSliderIndicator(isSelected:selectedIndex.value == index);
                }).toList()
              ),
            ),
          ]);
        },
        error: (e, st) => Text('Error: $e'),
        loading: () => const LoadingWidget(),
      ),
    );
  }
}
