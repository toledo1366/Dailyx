part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState{
  const factory HomeState.initialized() = _Initialized;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.failed(String message) = _Failed;
  const factory HomeState.success(List<String> toDos) = _Success;
  const factory HomeState.empty() =_Empty;
}