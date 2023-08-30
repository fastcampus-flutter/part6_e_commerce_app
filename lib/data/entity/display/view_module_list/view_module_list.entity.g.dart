// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_module_list.entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ViewModuleListEntityAdapter extends TypeAdapter<ViewModuleListEntity> {
  @override
  final int typeId = 3;

  @override
  ViewModuleListEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ViewModuleListEntity(
      viewModules:
          fields[0] == null ? [] : (fields[0] as List).cast<ViewModuleEntity>(),
    );
  }

  @override
  void write(BinaryWriter writer, ViewModuleListEntity obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.viewModules);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ViewModuleListEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
