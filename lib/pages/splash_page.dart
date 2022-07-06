import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pinterest_app_ui/pages/home_page.dart';

class SplashPage extends StatefulWidget {

  static const String id = 'splash_page';

  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  _initTimer() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, HomePage.id);
    });
  }

  @override
  initState() {
    super.initState();
    _initTimer();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Image.asset("assets/images/pinterest_logo.png"),
      ),



    );
  }
}
