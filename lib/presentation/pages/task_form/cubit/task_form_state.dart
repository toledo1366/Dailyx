part of 'task_form_cubit.dart';

@freezed
class TaskFormState with _$TaskFormState{
  const factory TaskFormState.created() = _Created;
  const factory TaskFormState.failed(String message) = _Failed;
  const factory TaskFormState.success() = _Success;
}