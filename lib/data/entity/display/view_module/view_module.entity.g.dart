// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_module.entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ViewModuleEntityAdapter extends TypeAdapter<ViewModuleEntity> {
  @override
  final int typeId = 2;

  @override
  ViewModuleEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ViewModuleEntity(
      type: fields[0] == null ? '' : fields[0] as String,
      title: fields[1] == null ? '' : fields[1] as String,
      subtitle: fields[2] == null ? '' : fields[2] as String,
      imageUrl: fields[3] == null ? '' : fields[3] as String,
      time: fields[4] == null ? -1 : fields[4] as int,
      products: fields[5] == null
          ? []
          : (fields[5] as List).cast<ProductInfoEntity>(),
      tabs: fields[6] == null ? [] : (fields[6] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, ViewModuleEntity obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.type)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.subtitle)
      ..writeByte(3)
      ..write(obj.imageUrl)
      ..writeByte(4)
      ..write(obj.time)
      ..writeByte(5)
      ..write(obj.products)
      ..writeByte(6)
      ..write(obj.tabs);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ViewModuleEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
