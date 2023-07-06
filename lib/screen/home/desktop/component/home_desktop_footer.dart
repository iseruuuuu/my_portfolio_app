import 'package:flutter/material.dart';

class HomeDesktopFooter extends StatelessWidget {
  const HomeDesktopFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        color: Colors.greenAccent,
        child: const Column(
          children: [
            Spacer(),
            Text(
              'Copyright©2023-2050 Ryutaro Iseki. All Rights Reserved',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Spacer(),
            Text(
              'お問い合わせはこちら',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              'Email:iseryuuuuu3@gmail.com',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
