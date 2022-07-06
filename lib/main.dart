import 'package:flutter/material.dart';
import 'package:pinterest_app_ui/pages/home_page.dart';
import 'package:pinterest_app_ui/pages/message_page.dart';
import 'package:pinterest_app_ui/pages/profile_page.dart';
import 'package:pinterest_app_ui/pages/splash_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ProfilePage(),
      routes: {
        SplashPage.id : (context) => const SplashPage(),
        HomePage.id : (context) => const HomePage(),
        MessagePage.id : (context) => const MessagePage(),
        ProfilePage.id : (context) => const ProfilePage(),

      },
    );
  }
}
