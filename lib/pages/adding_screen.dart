import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:music_app/models/hive_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AddSongPage extends StatelessWidget {
  AddSongPage({Key? key}) : super(key: key);

  final songsListBox = Hive.box<SongsList>('songs');

  add(String title, String lyrics) {
    final song = SongsList(songTitle: title, songLyrics: lyrics);
    songsListBox.add(song);
  }

  final TextEditingController _songTitleController = TextEditingController();
  final TextEditingController _songLyricsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(shrinkWrap: true, children: [
            Center(
              child: Text(
                'Add new song',
                style: TextStyle(fontFamily: 'Amethyst', fontSize: 20),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: _songTitleController,
              textDirection: TextDirection.ltr,
              maxLength: 40,
              decoration: InputDecoration(
                  hintText: 'Song Title',
                  filled: true,
                  fillColor: Colors.grey[300]),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
                controller: _songLyricsController,
                maxLines: 60,
                decoration: const InputDecoration(
                  hintText: 'Song lyrics',
                  filled: true,
                )),
          ]),
        ),
      ),
      floatingActionButton: ElevatedButton.icon(
          style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(Size.fromRadius(6.w)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)))),
          onPressed: () {
            if (_songTitleController.text.isEmpty ||
                _songLyricsController.text.isEmpty) {
              Get.snackbar(
                  'Blank Field', 'Please fill in all fields before submitting');
            } else {
              add(_songTitleController.text, _songLyricsController.text);
              Get.back();
            }
          },
          icon: const Icon(Icons.save_as_sharp),
          label: const Text('Save')),
    );
  }
}
