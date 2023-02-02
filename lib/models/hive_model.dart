import 'package:hive/hive.dart';
part 'hive_model.g.dart';

@HiveType(typeId: 0)
class SongsList {
  @HiveField(0)
  String songTitle;
  @HiveField(1)
  String songLyrics;

  SongsList({required this.songTitle, required this.songLyrics});
}
