import 'package:dailyx/domain/entities/diary/diary_entity.dart';
import 'package:dailyx/domain/repositories/diary/diary_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetDiaryListUseCase{
  final DiaryRepository repository;

  GetDiaryListUseCase(this.repository);

  List<DiaryEntity> execute() {
    return repository.getDiaryList();
  }
}