import 'package:injectable/injectable.dart';

import '../../entities/diary/diary_entity.dart';
import '../../repositories/diary/diary_repository.dart';

@injectable
class AddNewDiaryEntryUseCase{
  final DiaryRepository repository;

  AddNewDiaryEntryUseCase(this.repository);

  void execute(String title, String content, DateTime createdAt) {
    DiaryEntity diaryEntity = DiaryEntity(title, content, createdAt);

    repository.addNewEntry(diaryEntity);
  }
}