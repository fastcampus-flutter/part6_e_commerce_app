// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_api.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TargetApiAdapter extends TypeAdapter<TargetApi> {
  @override
  final int typeId = 10;

  @override
  TargetApi read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TargetApi.REMOTE;
      case 1:
        return TargetApi.MOCK;
      default:
        return TargetApi.REMOTE;
    }
  }

  @override
  void write(BinaryWriter writer, TargetApi obj) {
    switch (obj) {
      case TargetApi.REMOTE:
        writer.writeByte(0);
        break;
      case TargetApi.MOCK:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TargetApiAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
