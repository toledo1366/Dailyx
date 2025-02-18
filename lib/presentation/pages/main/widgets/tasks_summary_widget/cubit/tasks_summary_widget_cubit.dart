import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'tasks_summary_widget_state.dart';
part 'tasks_summary_widget_cubit.freezed.dart';

@injectable
class TasksSummaryWidgetCubit extends Cubit<TasksSummaryWidgetState>{
  TasksSummaryWidgetCubit():super(const TasksSummaryWidgetState.loading());
}