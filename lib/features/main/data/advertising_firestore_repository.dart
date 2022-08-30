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
    final collection = _firestore.collection("slider").withConverter<MiniSliderItem>(
      fromFirestore: (snapshots, _) => MiniSliderItem.fromMap(snapshots.data()!),
      toFirestore: (ads, _) => ads.toMap(),
    ).orderBy('priority');

    final querySnapshot = await collection.get();
    return querySnapshot.docs.map((e) => e.data()).toList();
  }
}

final advertisingRepository = Provider<AdvertisingRepository>((ref) {
  return AdvertisingFirestoreRepository(
    firestore: ref.watch(firestoreProvider),
  );
});
