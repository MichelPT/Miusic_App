import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:music_app/components/custom_header.dart';
import 'package:music_app/components/songs_card.dart';
import 'package:music_app/models/hive_model.dart';
import 'package:music_app/pages/adding_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomeScreen extends StatefulWidget {
  final String argument;
  const HomeScreen({super.key, required this.argument});

  get user => argument;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _songsBox = Hive.box('songs_list');

  @override
  void initState() {
    if (_songsBox.get('songs_list') == null) {
      _songsBox.add(['Your Song Title', 'Your Song Lyrics']);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            CustomHeader(user: widget.user),
            ListView.builder(
              shrinkWrap: true,
              itemCount: _songsBox.length,
              itemBuilder: (context, index) {
                return SongsCard(
                    songTitle: _songsBox.get(index)[0],
                    songLyrics: _songsBox.get(index)[1]);
              },
            )
          ]),
        ),
      ),
      floatingActionButton: ElevatedButton.icon(
        onPressed: () {
          Get.to(() => AddSongPage());
        },
        icon: Icon(Icons.add),
        label: Text('Add'),
        style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(Size.fromRadius(8.w)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2.h)))),
      ),
    );
  }
}
