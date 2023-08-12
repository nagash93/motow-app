part of 'mini_slider_cubit.dart';

@immutable
abstract class MiniSliderState {}

class MiniSliderInitial extends MiniSliderState {}
class MiniSliderLoading extends MiniSliderState {}
class MiniSliderSuccess extends MiniSliderState {
  final List<MiniSliderItem> listMiniSliderItem;
  MiniSliderSuccess({required this.listMiniSliderItem});

}
class MiniSliderFail extends MiniSliderState {}
