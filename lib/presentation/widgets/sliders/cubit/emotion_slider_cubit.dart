import 'package:flutter_bloc/flutter_bloc.dart';

class EmotionSliderCubit extends Cubit{
  EmotionSliderCubit(double initialState) : super(initialState);

  void updateSliderValue(double newValue) => emit(newValue);
}