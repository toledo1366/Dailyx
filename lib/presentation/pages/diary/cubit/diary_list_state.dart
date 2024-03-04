part of 'diary_list_cubit.dart';

@freezed
class DiaryListState with _$DiaryListState{
  const factory DiaryListState.failed(String message) = _Failed;
  const factory DiaryListState.success(List<DiaryEntity> data) = _Success;
  const factory DiaryListState.loading() = _Loading;
  const factory DiaryListState.empty() = _Empty;
}