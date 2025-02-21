import 'package:hive/hive.dart';

part 'diary_entry_dto.g.dart';

@HiveType(typeId: 1)
class DiaryEntryDto extends HiveObject{
  @HiveField(0)
  String createdAt;

  @HiveField(1)
  String? editedAt;

  @HiveField(2)
  String content;

  DiaryEntryDto(this.createdAt, this.editedAt, this.content);
}