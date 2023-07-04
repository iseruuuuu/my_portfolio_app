import 'package:flutter/material.dart';
import 'package:my_portfolio_app/component/responsive_widget.dart';
import 'package:my_portfolio_app/screen/home/desktop/desktop_home_screen.dart';
import 'package:my_portfolio_app/screen/home/mobile/mobile_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      largeWidget: DesktopHomeScreen(),
      smallWidget: MobileHomeScreen(),
    );
  }
}
