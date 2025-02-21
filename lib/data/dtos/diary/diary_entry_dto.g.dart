// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary_entry_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DiaryEntryDtoAdapter extends TypeAdapter<DiaryEntryDto> {
  @override
  final int typeId = 1;

  @override
  DiaryEntryDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DiaryEntryDto(
      fields[0] as String,
      fields[1] as String?,
      fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, DiaryEntryDto obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.createdAt)
      ..writeByte(1)
      ..write(obj.editedAt)
      ..writeByte(2)
      ..write(obj.content);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DiaryEntryDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
