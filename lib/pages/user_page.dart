import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:miusic_app/pages/song_list.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _nameController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('User Input'),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nameController,
                selectionWidthStyle: BoxWidthStyle.tight,
                decoration: InputDecoration(hintText: 'namanya siapa bg???')),
            ElevatedButton(
                onPressed: () {
                  Get.to(()=>SongList());
                },
                child: Text('Start'))
          ],
        ),
      ),
    );
  }
}
