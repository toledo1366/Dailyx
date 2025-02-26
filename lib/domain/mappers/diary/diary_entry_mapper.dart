import 'package:dailyx/data/dtos/diary/diary_entry_dto.dart';
import 'package:dailyx/domain/mappers/base_mapper.dart';
import 'package:dailyx/domain/models/diary/diary_entry.dart';
import 'package:injectable/injectable.dart';

@injectable
class DiaryEntryMapper extends BaseMapper<DiaryEntryDto, DiaryEntry>{
  @override
  DiaryEntry fromDto(DiaryEntryDto dto) {
    return DiaryEntry(
      DateTime.parse(dto.createdAt),
      dto.editedAt!.isNotEmpty ? DateTime.parse(dto.createdAt) : null,
      dto.content
    );
  }

  @override
  DiaryEntryDto toDto(DiaryEntry model) {
    return DiaryEntryDto(
      model.createdAt.toString(),
      model.editedAt?.toString() ?? '',
      model.content
    );
  }
  
}