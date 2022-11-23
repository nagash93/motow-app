import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:motow_app/features/addscreen/data/add_product_repository.dart';
import 'package:motow_app/features/addscreen/model/product.dart';

class AddFormController extends StateNotifier<AsyncValue<bool>> {
  AddProductRepository _repository;

  AddFormController({required repository}) : _repository = repository, super(const AsyncData(false));

  setData(Product product){
    _repository.addProduct(product);
  }
}