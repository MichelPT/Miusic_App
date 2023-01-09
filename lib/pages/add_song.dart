import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddSongPage extends StatelessWidget {
  const AddSongPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        TextFormField(
          decoration: InputDecoration(hintText: 'Song Title'),
        ),
        SizedBox(
          height: 15,
        ),
        TextFormField(
          decoration: const InputDecoration(hintText: 'Song lyrics'),
        ),
      ]),
    );
  }
}
