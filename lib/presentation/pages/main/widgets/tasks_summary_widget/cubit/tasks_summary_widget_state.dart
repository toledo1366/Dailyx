part of 'tasks_summary_widget_cubit.dart';

@freezed
class TasksSummaryWidgetState with _$TasksSummaryWidgetState{
  const factory TasksSummaryWidgetState.loading() = _Loading;
  const factory TasksSummaryWidgetState.success() = _Success;
  const factory TasksSummaryWidgetState.noEntry() = _NoEntry;
  const factory TasksSummaryWidgetState.error() = _Error;
}