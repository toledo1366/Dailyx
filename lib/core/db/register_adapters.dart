import 'package:dailyx/data/dtos/diary/diary_entry_dto.dart';
import 'package:dailyx/data/dtos/tasks/task_dto.dart';
import 'package:hive/hive.dart';

void registerAdapters(){
  Hive.registerAdapter(TaskDtoAdapter());
  Hive.registerAdapter(DiaryEntryDtoAdapter());
}