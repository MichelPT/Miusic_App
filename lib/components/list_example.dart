import 'package:flutter/material.dart';

class ListExample extends StatelessWidget {
  const ListExample({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            minimumSize:
                MaterialStateProperty.all(Size.fromHeight(50))),
        onPressed: (() {}),
        child: Text('Song Title Example 1'));
  }
}
