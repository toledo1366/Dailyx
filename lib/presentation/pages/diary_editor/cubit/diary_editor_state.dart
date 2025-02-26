part of 'diary_editor_cubit.dart';

@freezed
class DiaryEditorState with _$DiaryEditorState{
  const factory DiaryEditorState.loading() = _Loading;
  const factory DiaryEditorState.created() = _Created;
  const factory DiaryEditorState.saved() = _Saved;
  const factory DiaryEditorState.failed() = _Failed;
}