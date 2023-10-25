import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'task_form_cubit.freezed.dart';
part 'task_form_state.dart';


@injectable
class TaskFormCubit extends Cubit<TaskFormState>{
  String title = '';

  TaskFormCubit(): super(const TaskFormState.created());

  void titleSettingHandler(String givenTitle) {
    title = givenTitle;

    print(title);
  }
}