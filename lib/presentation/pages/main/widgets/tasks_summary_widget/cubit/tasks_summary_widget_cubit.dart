import 'package:dailyx/core/routing/app_router.dart';
import 'package:dailyx/domain/use_cases/tasks/get_tasks_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../domain/models/tasks/task.dart';

part 'tasks_summary_widget_state.dart';
part 'tasks_summary_widget_cubit.freezed.dart';

@injectable
class TasksSummaryWidgetCubit extends Cubit<TasksSummaryWidgetState>{
  final GetTasksUseCase _getTasksUseCase;

  TasksSummaryWidgetCubit(this._getTasksUseCase):super(const TasksSummaryWidgetState.loading()){
    Future.delayed(const Duration(seconds: 3), () => checkForTasks());
  }

  Future<void> checkForTasks() async {
    if(state != const TasksSummaryWidgetState.loading()){
      emit(const TasksSummaryWidgetState.loading());
      Future.delayed(const Duration(seconds: 5));
    }

    DateTime timeNow = DateTime.now();
    List<Task> tasks = await _getTasksUseCase.execute(timeNow);

    if(tasks.isEmpty){
      emit(const TasksSummaryWidgetState.noEntry());
      return;
    }

    emit(TasksSummaryWidgetState.success(tasks));
  }

  void onNewTaskCreate(){
    router.push('/task_creation_form');
  }
}