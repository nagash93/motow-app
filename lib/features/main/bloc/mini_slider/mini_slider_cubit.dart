import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:motow_app/features/main/data/advertising_firestore_repository.dart';
import 'package:motow_app/features/main/data/advertising_repository.dart';

import '../../model/mini_slider_item_model.dart';

part 'mini_slider_state.dart';

class MiniSliderCubit extends Cubit<MiniSliderState> {
  MiniSliderCubit() : super(MiniSliderInitial());

  final _repository = AdvertisingFirestoreRepository();
  miniSliderLoad() async{
    emit(MiniSliderLoading());
    try{
      final result = await _repository.getMiniSliderItem();
      emit(MiniSliderSuccess(listMiniSliderItem:result));
    }catch(e){
      emit(MiniSliderFail());
    }

  }
}
