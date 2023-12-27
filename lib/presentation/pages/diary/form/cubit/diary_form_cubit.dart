import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'diary_form_cubit.freezed.dart';
part 'diary_form_state.dart';

class DiaryFormCubit extends Cubit<DiaryFormState>{
  DiaryFormCubit(): super(const DiaryFormState.initialized());


}