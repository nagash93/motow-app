import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:motow_app/features/main/data/advertising_firestore_repository.dart';
import 'package:motow_app/features/main/data/advertising_repository.dart';
import 'package:motow_app/features/main/model/mini_slider_item_model.dart';

class AdvertisingController extends StateNotifier<AsyncValue<List<MiniSliderItem>>> {
  final AdvertisingRepository _repository;

  AdvertisingController({required repository}) : _repository = repository, super(const AsyncData([])) {
    state = const AsyncValue.loading();
    getData();
  }

  Future<void> getData() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(_repository.getMiniSliderItem);
  }
}

final advertisingController =
    StateNotifierProvider<AdvertisingController, AsyncValue<List<MiniSliderItem>>>(
        (ref) {
  return AdvertisingController(repository: ref.watch(advertisingRepository));
});
