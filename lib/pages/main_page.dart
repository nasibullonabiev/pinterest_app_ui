import 'package:flutter/material.dart';
import 'package:pinterest_app_ui/pages/mobile/home_screen.dart';
import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, boxConstraints) {
        if (boxConstraints.maxWidth < 580) {
          crossAxisCount = 2;
          return const HomePage();
        }
        if (boxConstraints.maxWidth < 1025) {
          crossAxisCount = 4;
          return HomePage();
        } else {
          crossAxisCount = 6;
          return HomePage();
        }
      },
    );
  }
}
