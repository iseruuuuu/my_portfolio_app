import 'package:flutter/material.dart';

class HomeMobileHeader extends StatelessWidget {
  const HomeMobileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Container(
        width: double.infinity,
        height: 100,
        color: Colors.greenAccent,
      ),
    );
  }
}
