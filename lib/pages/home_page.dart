import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'h_make_images.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            title: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        primary: Colors.black
                    ),
                    onPressed: () {},
                    child: const Text(
                      "For you",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Today",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Following",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Health",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Recipes",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: MasonryGridView.count(
            crossAxisCount: controller.crossAxisCount,
            mainAxisSpacing: 4,
            itemCount: controller.photos.length,
            crossAxisSpacing: 4,
            itemBuilder: (context, index) {
              return HMakeImages(
                singlePhoto: controller.photos[index],
              );
            },
          ),
          floatingActionButton: Container(
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.grey, width: .1),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: BottomNavigationBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
              type: BottomNavigationBarType.fixed,
              selectedFontSize: 0,
              unselectedFontSize: 0,
              selectedIconTheme: const IconThemeData(size: 40),
              unselectedIconTheme: const IconThemeData(size: 40),
              selectedItemColor: Colors.black,
              unselectedItemColor: const Color(0xFFC4C4C4),
              currentIndex: _selectedIndex,
              onTap: (index) {
                _selectedIndex = index;
                setState(() {});
              },
              items: [
                const BottomNavigationBarItem(
                  icon: Image(
                    height: 35,
                    width: 35,
                    image: AssetImage("assets/images/ic_house.jpg"),
                  ),
                  label: "",
                  activeIcon: Image(
                    height: 35,
                    width: 35,
                    image: AssetImage("assets/images/ic_house_black.jpg"),
                  ),
                ),
                const BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.search),
                  label: "",
                  activeIcon: Icon(CupertinoIcons.search),
                ),
                const BottomNavigationBarItem(
                  icon: Image(
                    height: 37,
                    width: 37,
                    image: AssetImage("assets/images/im_message.png"),
                  ),
                  label: "",
                  activeIcon: Image(
                    height: 35,
                    width: 35,
                    image: AssetImage("assets/images/ic_message_black.jpg"),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: const Image(
                    height: 35,
                    width: 35,
                    image: AssetImage("assets/images/img_18.png"),
                  ),
                  label: "",
                  activeIcon: avatarBorder("assets/images/img_18.png"),
                ),
              ],
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        );
      },
    );
    // Scaffold(
    //   appBar: AppBar(
    //     elevation: 0,
    //     automaticallyImplyLeading: false,
    //     backgroundColor: Colors.white,
    //     title: SingleChildScrollView(
    //       scrollDirection: Axis.horizontal,
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           ElevatedButton(
    //             style: ElevatedButton.styleFrom(
    //                 shape: const StadiumBorder(),
    //                 primary: Colors.black
    //             ),
    //             onPressed: () {},
    //             child: const Text(
    //               "For you",
    //               style: TextStyle(color: Colors.white),
    //             ),
    //           ),
    //           TextButton(
    //             onPressed: () {},
    //             child: const Text(
    //               "Today",
    //               style: TextStyle(color: Colors.black),
    //             ),
    //           ),
    //           TextButton(
    //             onPressed: () {},
    //             child: const Text(
    //               "Following",
    //               style: TextStyle(color: Colors.black),
    //             ),
    //           ),
    //           TextButton(
    //             onPressed: () {},
    //             child: const Text(
    //               "Health",
    //               style: TextStyle(color: Colors.black),
    //             ),
    //           ),
    //           TextButton(
    //             onPressed: () {},
    //             child: const Text(
    //               "Recipes",
    //               style: TextStyle(color: Colors.black),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    //   body: MasonryGridView.count(
    //     crossAxisCount: controller.crossAxisCount,
    //     mainAxisSpacing: 4,
    //     itemCount: controller.photos.length,
    //     crossAxisSpacing: 4,
    //     itemBuilder: (context, index) {
    //       return HMakeImages(
    //         singlePhoto: controller.photos[index],
    //       );
    //     },
    //   ),
    //   floatingActionButton: Container(
    //     height: 80,
    //     decoration: BoxDecoration(
    //       color: Colors.white,
    //       borderRadius: BorderRadius.circular(50),
    //       border: Border.all(color: Colors.grey, width: .1),
    //     ),
    //     margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
    //     child: BottomNavigationBar(
    //       elevation: 0,
    //       backgroundColor: Colors.transparent,
    //       landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
    //       type: BottomNavigationBarType.fixed,
    //       selectedFontSize: 0,
    //       unselectedFontSize: 0,
    //       selectedIconTheme: const IconThemeData(size: 40),
    //       unselectedIconTheme: const IconThemeData(size: 40),
    //       selectedItemColor: Colors.black,
    //       unselectedItemColor: const Color(0xFFC4C4C4),
    //       currentIndex: _selectedIndex,
    //       onTap: (index) {
    //         _selectedIndex = index;
    //         setState(() {});
    //       },
    //       items: [
    //         const BottomNavigationBarItem(
    //           icon: Image(
    //             height: 35,
    //             width: 35,
    //             image: AssetImage("assets/images/ic_house.jpg"),
    //           ),
    //           label: "",
    //           activeIcon: Image(
    //             height: 35,
    //             width: 35,
    //             image: AssetImage("assets/images/ic_house_black.jpg"),
    //           ),
    //         ),
    //         const BottomNavigationBarItem(
    //           icon: Icon(CupertinoIcons.search),
    //           label: "",
    //           activeIcon: Icon(CupertinoIcons.search),
    //         ),
    //         const BottomNavigationBarItem(
    //           icon: Image(
    //             height: 37,
    //             width: 37,
    //             image: AssetImage("assets/images/im_message.png"),
    //           ),
    //           label: "",
    //           activeIcon: Image(
    //             height: 35,
    //             width: 35,
    //             image: AssetImage("assets/images/ic_message_black.jpg"),
    //           ),
    //         ),
    //         BottomNavigationBarItem(
    //           icon: const Image(
    //             height: 35,
    //             width: 35,
    //             image: AssetImage("assets/images/img_18.png"),
    //           ),
    //           label: "",
    //           activeIcon: avatarBorder("assets/images/img_18.png"),
    //         ),
    //       ],
    //     ),
    //   ),
    //   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    // );
  }
}

Widget avatarBorder(String image) {
  return Container(
    height: 37,
    width: 37,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.black, width: 1),
    ),
    child: Padding(
      padding: const EdgeInsets.all(1.0),
      child: Image(
        image: AssetImage(image),
      ),
    ),
  );
}

