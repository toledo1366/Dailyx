import '../../../data/dtos/tasks/task_dto.dart';

abstract class TasksRepository{
  Future<List<TaskDto>> getItems(DateTime selectedDate);
  Future<bool> createNewTask(List<TaskDto> task);
  Future<bool> updateTask(TaskDto task);
  Future<bool> deleteTask(TaskDto task);
}