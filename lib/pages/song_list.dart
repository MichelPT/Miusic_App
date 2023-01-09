import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miusic_app/pages/add_song.dart';

import '../components/custom_header.dart';
import '../components/list_example.dart';

class SongList extends StatefulWidget {
  const SongList({Key? key}) : super(key: key);

  @override
  State<SongList> createState() => _SongListState();
}

class _SongListState extends State<SongList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            CustomHeader(),
            SizedBox(
              height: 60,
            ),
            ListExample()
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        child: Icon(
          Icons.add,
          size: 40,
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.purpleAccent),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40))),
            minimumSize: MaterialStateProperty.all(Size.square(70))),
        onPressed: () {
          Get.to(() => AddSongPage());
        },
      ),
    );
  }
}
