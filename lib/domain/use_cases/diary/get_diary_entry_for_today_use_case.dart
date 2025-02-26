import 'package:dailyx/data/dtos/diary/diary_entry_dto.dart';
import 'package:dailyx/domain/mappers/diary/diary_entry_mapper.dart';
import 'package:dailyx/domain/models/diary/diary_entry.dart';
import 'package:dailyx/domain/repositories/diary/diary_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetDiaryEntryForTodayUseCase {
  final DiaryEntryMapper _mapper;
  final DiaryRepository _repository;

  GetDiaryEntryForTodayUseCase(this._mapper, this._repository);

  Future<DiaryEntry?> execute(DateTime? selectedDate) async {
    selectedDate ??= DateTime.now();
    final DiaryEntryDto? dto = await _repository.getEntryForSelectedDate(selectedDate);

    if(dto != null){
      return _mapper.fromDto(dto);
    }
    return null;
  }
}