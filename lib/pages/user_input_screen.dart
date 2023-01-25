import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:music_app/pages/home_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Username Input'),
        titleSpacing: 30.w,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Enter your name',
                style: TextStyle(
                    fontFamily: 'Amethysta',
                    fontSize: 24,
                    fontWeight: FontWeight.w400)),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.purple[100],
                    border: InputBorder.none),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: ElevatedButton.icon(
        onPressed: () {
          if (_usernameController.text == '') {
            Get.snackbar('Empty Field', 'Please enter your name',
                snackPosition: SnackPosition.BOTTOM);
          } else {
            Get.to(() => HomeScreen(argument: _usernameController.text));
          }
        },
        icon: const Icon(Icons.input_outlined),
        label: const Text('Go!'),
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(15),
            animationDuration: const Duration(milliseconds: 2000),
            shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
            minimumSize: MaterialStateProperty.all(Size.fromHeight(50))),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
