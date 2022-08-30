import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:motow_app/app/general_providers.dart';
import 'package:motow_app/features/main/data/advertising_repository.dart';

class AdvertisingFirestoreRepository extends AdvertisingRepository {
  final FirebaseFirestore _firestore;

  AdvertisingFirestoreRepository({required firestore}) : _firestore = firestore;
}

final advertisingRepository = Provider<AdvertisingRepository>((ref) {
  return AdvertisingFirestoreRepository(
      firestore: ref.watch(firestoreProvider),
  );
});
