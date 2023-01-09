import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'Hello, Joy',
          style: TextStyle(
              fontFamily: "Amethysta",
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Search',
            suffixIcon: Icon(Icons.search),
          ),
        )
      ],
    );
  }
}
