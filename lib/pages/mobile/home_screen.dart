import 'package:flutter/material.dart';
import 'package:pinterest_app_ui/views/gallery_view.dart';

import 'home_screen.dart';

int crossAxisCount = 3;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController controller = PageController(keepPage: true);
  int currentScreen = 0;
  List<Image> allImage = [];

  int get limit {
    return crossAxisCount * 15;
  }

  void _pressButton(int screen) {
    currentScreen = screen;
    controller.jumpToPage(screen);
    setState(() {});
  }

  void _onScreenChanged(int screen) {
    currentScreen = screen;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        elevation: 0,
        leadingWidth: 0,
        title: SizedBox(
          height: 40,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              // #For you
              ElevatedButton(
                onPressed: () => _pressButton(0),
                style: ElevatedButton.styleFrom(
                  primary: currentScreen == 0 ? Colors.black : Colors.white,
                  elevation: 0,
                  shape: const StadiumBorder(),
                ),
                child: Text(
                  "For you",
                  style: TextStyle(
                    color: currentScreen == 0 ? Colors.white : Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
              // #Today
              ElevatedButton(
                onPressed: () => _pressButton(1),
                style: ElevatedButton.styleFrom(
                  primary: currentScreen == 1 ? Colors.black : Colors.white,
                  elevation: 0,
                  shape: const StadiumBorder(),
                ),
                child: Text(
                  "Today",
                  style: TextStyle(
                    color: currentScreen == 1 ? Colors.white : Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
              // #Following
              ElevatedButton(
                onPressed: () => _pressButton(2),
                style: ElevatedButton.styleFrom(
                  primary: currentScreen == 2 ? Colors.black : Colors.white,
                  elevation: 0,
                  shape: const StadiumBorder(),
                ),
                child: Text(
                  "Following",
                  style: TextStyle(
                    color: currentScreen == 2 ? Colors.white : Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
              // #Health
              ElevatedButton(
                onPressed: () => _pressButton(3),
                style: ElevatedButton.styleFrom(
                  primary: currentScreen == 3 ? Colors.black : Colors.white,
                  elevation: 0,
                  shape: const StadiumBorder(),
                ),
                child: Text(
                  "Health",
                  style: TextStyle(
                    color: currentScreen == 3 ? Colors.white : Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
              // #Recipes
              ElevatedButton(
                onPressed: () => _pressButton(4),
                style: ElevatedButton.styleFrom(
                  primary: currentScreen == 4 ? Colors.black : Colors.white,
                  elevation: 0,
                  shape: const StadiumBorder(),
                ),
                child: Text(
                  "Recipes",
                  style: TextStyle(
                    color: currentScreen == 4 ? Colors.white : Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: PageView(
        controller: controller,
        onPageChanged: _onScreenChanged,
        children: [
          GalleryView(
            crossAxisCount: crossAxisCount,
          ),
          GalleryView(),
          GalleryView(),
          GalleryView(),
          GalleryView(),
        ],
      ),
    );
  }
}
