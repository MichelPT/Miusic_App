import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:music_app/models/hive_model.dart';
import 'package:music_app/pages/adding_screen.dart';
import 'package:music_app/pages/editing_screen.dart';
import 'package:music_app/pages/reading_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SongsListSection extends StatelessWidget {
  //this works. Try to change the subjects and modify the adding method as well as editing and deleting

  SongsListSection({super.key});

  final songsListBox = Hive.box<SongsList>('songs');

  remove(int index) {
    songsListBox.deleteAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton(
        onPressed: () => Get.to(() => AddSongPage()),
        icon: Icon(Icons.add),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.amber)),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  child: Text('Add'),
                  onPressed: () => Get.to(() => AddSongPage()),
                ),
              ],
            ),
            ValueListenableBuilder(
              valueListenable: songsListBox.listenable(),
              builder: (context, Box<SongsList> box, _) {
                return Flexible(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: songsListBox.length,
                    itemBuilder: (context, index) {
                      final songs = songsListBox.getAt(index)!;
                      return SizedBox(
                        height: 20.h,
                        child: Card(
                          elevation: 10,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: InkWell(
                            onTap: () => Get.to(() => ReadSongPage(
                                title: songs.songTitle,
                                lyrics: songs.songLyrics)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Title\t\t\t: ${songs.songTitle}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                Flexible(
                                  child: Text(
                                    songs.songLyrics,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    OutlinedButton.icon(
                                        style: ButtonStyle(),
                                        onPressed: () {
                                          Get.to(() => EditSongPage(
                                              title: songs.songTitle,
                                              lyrics: songs.songLyrics,
                                              index: index));
                                        },
                                        icon: Icon(Icons.edit),
                                        label: Text('Edit')),
                                    OutlinedButton.icon(
                                        onPressed: () {
                                          remove(index);
                                        },
                                        icon: Icon(Icons.delete),
                                        label: Text('Delete')),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
