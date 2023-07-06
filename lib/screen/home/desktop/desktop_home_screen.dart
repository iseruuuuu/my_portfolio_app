import 'package:flutter/material.dart';
import 'package:my_portfolio_app/screen/home/desktop/component/home_desktop_header.dart';
import 'package:my_portfolio_app/screen/home/desktop/component/home_desktop_profile.dart';
import 'package:my_portfolio_app/screen/home/desktop/component/home_desktop_sns.dart';

import 'component/home_desktop_career.dart';
import 'component/home_desktop_footer.dart';
import 'component/home_desktop_hobby.dart';
import 'component/home_desktop_introduce.dart';

class DesktopHomeScreen extends StatelessWidget {
  const DesktopHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeDesktopHeader(),
            HomeDesktopProfile(),
            HomeDesktopSNS(),
            HomeDesktopIntroduce(),
            HomeDesktopHobby(),
            HomeDesktopCareer(),
            HomeDesktopFooter(),
          ],
        ),
      ),
    );
  }
}
