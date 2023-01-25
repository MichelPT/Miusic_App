import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SongsCard extends StatelessWidget {
  late String songTitle;
  late String songLyrics;
  SongsCard({super.key, required this.songTitle, required this.songLyrics});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(songTitle),
                  Text(songLyrics),
                ],
              ))),
    );
  }
}
