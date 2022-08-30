import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:motow_app/app/general_providers.dart';
import 'package:motow_app/features/main/data/advertising_repository.dart';
import 'package:motow_app/features/main/model/mini_slider_item_model.dart';

class AdvertisingFirestoreRepository extends AdvertisingRepository {
  final FirebaseFirestore _firestore;
  AdvertisingFirestoreRepository({required firestore}) : _firestore = firestore;

  @override
  Future<List<MiniSliderItem>> getMiniSliderItem() async {
    final advertisingCollection = _firestore.collection("/slider");
    QuerySnapshot snapshot =
        await advertisingCollection.orderBy('priority').get();
    List<MiniSliderItem> _todos = snapshot.docs
        .map((e) => MiniSliderItem.fromMap(e.data() as Map<String, dynamic>))
        .toList();
    return _todos;
  }
}

final advertisingRepository = Provider<AdvertisingRepository>((ref) {
  return AdvertisingFirestoreRepository(
    firestore: ref.watch(firestoreProvider),
  );
});
