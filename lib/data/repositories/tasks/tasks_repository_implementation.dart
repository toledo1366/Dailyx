import 'package:dailyx/data/dtos/tasks/task_dto.dart';
import 'package:dailyx/domain/repositories/tasks/tasks_repository.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../../core/helpers/keys.dart';

@Injectable(as: TasksRepository)
class TasksRepositoryImplementation implements TasksRepository{
  
  @override
  Future<bool> deleteTask(TaskDto task) {
    // TODO: implement deleteTask
    throw UnimplementedError();
  }

  @override
  Future<List<TaskDto>> getItems(DateTime selectedDate) async {
    final box = await Hive.openBox<TaskDto>(tasksKey);

    try{
      final List<TaskDto> tasks = box.values.toList().where((item) => DateTime.tryParse(item.startDate)!.isAfter(selectedDate)).toList();

      box.values.toList().forEach((item){
        // if(selectedDate.isAfter(DateTime.tryParse(item.startDate)!) && selectedDate.isBefore(item.deadline.add(const Duration(days: 1)))){
        // }

        if(DateTime.tryParse(item.startDate)!.isAfter(selectedDate)){
          tasks.add(item);
        }
      });



      box.close();

      return tasks;
    } catch (ex) {
      box.close();

      return [];
    }
  }

  @override
  Future<bool> updateTask(TaskDto task) {
    // TODO: implement updateTask
    throw UnimplementedError();
  }
  
  @override
  Future<bool> createNewTask(List<TaskDto> tasks) async {
    final box = await Hive.openBox<TaskDto>(tasksKey);

    try{
      final items = box.get(tasksKey);

      if(items != null){
        box.clear();
        box.addAll(tasks);
        box.close();

        return true;
      }

      await box.addAll(tasks);
      await box.close();

      return true;
    } catch (ex){
      box.close();

      return false;
    }
  }

}