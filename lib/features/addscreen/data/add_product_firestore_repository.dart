import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/product.dart';
import 'add_product_repository.dart';

class AddProductFirestoreRepository extends AddProductRepository{

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<bool> addProduct( Product product) async {
      final collection = _firestore.collection('product');
      try {
        await collection.add(
            {'name': product.name, 'image': product.image});
        return true;
      } catch (e) {
        return Future.error(e);
      }

  }

}