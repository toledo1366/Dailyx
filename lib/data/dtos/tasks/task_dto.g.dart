// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaskDtoAdapter extends TypeAdapter<TaskDto> {
  @override
  final int typeId = 0;

  @override
  TaskDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TaskDto(
      summary: fields[0] as String,
      description: fields[1] as String,
      startDate: fields[2] as String,
      deadline: fields[4] as String,
      endDate: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, TaskDto obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.summary)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.startDate)
      ..writeByte(3)
      ..write(obj.endDate)
      ..writeByte(4)
      ..write(obj.deadline);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
