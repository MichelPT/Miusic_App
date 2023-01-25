import 'package:hive/hive.dart';
part 'hive_model.g.dart';

@HiveType(typeId: 0)
class SongsList {
  final _songsBox = Hive.box('songs_list');

  @HiveField(0)
  late String songTitle;
  @HiveField(1)
  late String songLyrics;

  SongsList({required this.songTitle, required this.songLyrics});

  void addSong(SongsList object) {
    _songsBox.add(object);
  }

  void getSong() {
    _songsBox.get('songs_list');
  }
}
