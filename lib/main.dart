import 'package:flutter/material.dart';
import 'package:fluttrer_responsive_template/home/widgets/desktop_content.dart';
import 'package:fluttrer_responsive_template/home/widgets/tablet_content.dart';
import 'home/home.dart';
import 'home/widgets/mobile_content.dart';

void main() {
  runApp(MyResponsiveLayoutApp());
}

class MyResponsiveLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Template',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(
        mobileBody: MobileContent(),
        tabletBody: TabletContent(),
        desktopBody: DesktopContent(),
      ),
    );
  }
}
