import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:motow_app/app/general_providers.dart';
import 'package:motow_app/features/main/data/advertising_repository.dart';
import 'package:motow_app/features/main/model/mini_slider_item_model.dart';

class AdvertisingFirestoreRepository extends AdvertisingRepository {


  final _firestore= FirebaseFirestore.instance;

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

