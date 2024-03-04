part  of 'diary_form_cubit.dart';

@freezed
class DiaryFormState with _$DiaryFormState{
  const factory DiaryFormState.initialized() = _Initialized;
  const factory DiaryFormState.failed(String message) = _Failed;
  const factory DiaryFormState.success() = _Success;
}