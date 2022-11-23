import 'package:motow_app/features/addscreen/model/product.dart';

abstract class AddProductRepository{
  Future<bool> addProduct(Product product);
}