import 'package:flutter/material.dart';
import 'package:pinterest_app_ui/pages/main_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Pinterest App",
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
