import 'package:dailyx/data/dtos/diary/diary_entry_dto.dart';

abstract class DiaryRepository {
  Future<List<DiaryEntryDto>> getAllEntries();
  Future<DiaryEntryDto?> getEntryForSelectedDate(DateTime selectedDate);
  Future<bool> updateEntry(DiaryEntryDto newEntry);
  Future<void> createEntry(DiaryEntryDto entry);
  Future<bool> deleteEntry(DiaryEntryDto entry);
}