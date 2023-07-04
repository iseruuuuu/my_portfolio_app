import 'package:flutter/material.dart';
import 'package:my_portfolio_app/screen/home/mobile/component/home_mobile_career.dart';
import 'package:my_portfolio_app/screen/home/mobile/component/home_mobile_header.dart';
import 'package:my_portfolio_app/screen/home/mobile/component/home_mobile_hobby.dart';
import 'package:my_portfolio_app/screen/home/mobile/component/home_mobile_introduce.dart';
import 'package:my_portfolio_app/screen/home/mobile/component/home_mobile_profile.dart';
import 'package:my_portfolio_app/screen/home/mobile/component/home_mobile_sns.dart';

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeMobileHeader(),
            HomeMobileProfile(),
            HomeMobileSNS(),
            HomeMobileIntroduce(),
            HomeMobileHobby(),
            HomeMobileCareer(),
          ],
        ),
      ),
    );
  }
}
