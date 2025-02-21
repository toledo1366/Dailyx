import 'package:dailyx/core/helpers/keys.dart';
import 'package:dailyx/data/dtos/diary/diary_entry_dto.dart';
import 'package:dailyx/domain/repositories/diary/diary_repository.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: DiaryRepository)
class DiaryRepositoryImplementation implements DiaryRepository{
  @override
  Future<void> createEntry(DiaryEntryDto entry) {
    // TODO: implement createEntry
    throw UnimplementedError();
  }

  @override
  Future<bool> deleteEntry(DiaryEntryDto entry) {
    // TODO: implement deleteEntry
    throw UnimplementedError();
  }

  @override
  Future<List<DiaryEntryDto>> getAllEntries() async {
    final box = await Hive.openBox<DiaryEntryDto>(diaryEntriesKey);
    List<DiaryEntryDto> items = box.values.toList();
    box.close();
    return items;
  }

  @override
  Future<DiaryEntryDto?> getEntryForSelectedDate(DateTime selectedDate) async {
    List<DiaryEntryDto> items = await getAllEntries();

    return items.isNotEmpty ? items.where((item) => DateTime.parse(item.createdAt) == selectedDate).first : null;
  }

  @override
  Future<bool> updateEntry(DiaryEntryDto newEntry) {
    // TODO: implement updateEntry
    throw UnimplementedError();
  }
}