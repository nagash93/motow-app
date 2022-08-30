import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:motow_app/features/main/data/advertising_firestore_repository.dart';
import 'package:motow_app/features/main/data/advertising_repository.dart';

class AdvertisingController extends StateNotifier<AsyncValue<List<String>>> {
  final AdvertisingRepository _repository;

  AdvertisingController({required repository}) : _repository = repository, super(const AsyncData([])) {
    state = const AsyncValue.loading();
    setData();
  }

  Future<void> setData() async {
    state = await AsyncValue.guard(() async => ["1", "3"]);
  }
}

final advertisingController =
    StateNotifierProvider<AdvertisingController, AsyncValue<List<String>>>(
        (ref) {
  return AdvertisingController(repository: ref.watch(advertisingRepository));
});
