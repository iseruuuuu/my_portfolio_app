import 'package:flutter/material.dart';
import 'package:my_portfolio_app/screen/home/desktop/component/home_desktop_header.dart';
import 'package:my_portfolio_app/screen/home/desktop/component/home_desktop_profile.dart';
import 'package:my_portfolio_app/screen/home/desktop/component/home_mobile_sns.dart';

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
          ],
        ),
      ),
    );
  }
}
