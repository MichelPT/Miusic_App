import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ReadSongPage extends StatelessWidget {
  final String title;
  final String lyrics;
  const ReadSongPage({super.key, required this.title, required this.lyrics});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: Padding(
        padding: EdgeInsets.all(1.w),
        child: ListView(shrinkWrap: true, children: [
          Container(
            width: 80.h,
            child: Card(
              child: Text(lyrics),
            ),
          ),
        ]),
      ),
    );
  }
}
