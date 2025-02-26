import 'package:dailyx/data/dtos/diary/diary_entry_dto.dart';
import 'package:dailyx/domain/mappers/diary/diary_entry_mapper.dart';
import 'package:dailyx/domain/models/diary/diary_entry.dart';
import 'package:dailyx/domain/repositories/diary/diary_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateNewDiaryEntryUseCase {
  final DiaryEntryMapper _mapper;
  final DiaryRepository _repository;

  CreateNewDiaryEntryUseCase(this._mapper, this._repository);

  Future<void> execute(DiaryEntry entry) async{
    final DiaryEntryDto dto = _mapper.toDto(entry);
    await _repository.createEntry(dto);
  }
}