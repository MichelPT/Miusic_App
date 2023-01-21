import 'dart:ui';

import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  late String user;
  CustomHeader({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hello, $user',
                style: TextStyle(
                    fontFamily: "Amethysta",
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              CircleAvatar(
                backgroundColor: Colors.purple[200],
                radius: 24,
                child: Text('${user[0]}'),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
