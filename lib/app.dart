import 'package:flutter/material.dart';
import 'package:pinterest_app_ui/pages/main_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pinterest App",
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              elevation: 0,
              backgroundColor: Colors.white,
              foregroundColor: Colors.black
          )
      ),
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}
