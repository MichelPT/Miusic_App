// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SongsListAdapter extends TypeAdapter<SongsList> {
  @override
  final int typeId = 0;

  @override
  SongsList read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SongsList(
      songTitle: fields[0] as String,
      songLyrics: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SongsList obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.songTitle)
      ..writeByte(1)
      ..write(obj.songLyrics);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SongsListAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
