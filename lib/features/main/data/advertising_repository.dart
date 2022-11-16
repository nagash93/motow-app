import '../model/mini_slider_item_model.dart';

abstract class AdvertisingRepository {
  Future<List<MiniSliderItem>> getMiniSliderItem();
}