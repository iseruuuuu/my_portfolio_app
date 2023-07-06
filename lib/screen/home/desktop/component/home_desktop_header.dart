import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

class HomeDesktopHeader extends StatelessWidget {
  const HomeDesktopHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Container(
        width: double.infinity,
        height: 50,
        color: Colors.greenAccent,
      ),
    );
  }
}
