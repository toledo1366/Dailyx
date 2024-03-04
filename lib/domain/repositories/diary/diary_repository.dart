import 'package:dailyx/domain/entities/diary/diary_entity.dart';
import 'package:injectable/injectable.dart';

abstract class DiaryRepository{
  List<DiaryEntity> getDiaryList();
  void addNewEntry(DiaryEntity diaryEntity);
}

@Injectable(as: DiaryRepository)
class DiaryRepositoryImplementation implements DiaryRepository {
  List<DiaryEntity> items = [];

  @override
  void addNewEntry(DiaryEntity diaryEntity) {
    items.add(diaryEntity);
  }

  @override
  List<DiaryEntity> getDiaryList() {
    items.add(DiaryEntity('Title', 'content', DateTime.now()));
    return items;
  }

}