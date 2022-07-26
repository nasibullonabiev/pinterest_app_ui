import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinterest_app_ui/pages/message_page.dart';
import 'package:pinterest_app_ui/pages/profile_page.dart';
import 'mobile/home_screen.dart';
import 'search_page.dart';

class HomePage extends StatefulWidget {
  static const id = "";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _initialPage = 0;

  void _onPageChanged(int page) {
    _initialPage = page;
    setState(() {});
  }

  Color _iconColor(int page) => _initialPage == page ? Colors.black : Colors.grey;
  double _iconSize(int page) => _initialPage == page ? 34 : 32;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _initialPage,
        children: [
          HomeScreen(),
          const SearchPage(),
          const MessagePage(),
          const ProfilePage(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 70,
        margin: const EdgeInsets.symmetric(horizontal: 60),
        padding: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(35),
          border: Border.all(color: Colors.black12, width: 1),
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () => _onPageChanged(0),
              icon: Icon(Icons.home_filled, size: _iconSize(0), color: _iconColor(0)),
            ),
            IconButton(
              onPressed: () => _onPageChanged(1),
              icon: Icon(Icons.search, size: _iconSize(1), color: _iconColor(1)),
            ),

            IconButton(
              onPressed: () => _onPageChanged(2),
              icon: Icon(CupertinoIcons.chat_bubble_text_fill, size: _iconSize(2), color: _iconColor(2)),
            ),

            IconButton(
              onPressed: () => _onPageChanged(3),
              icon: Icon(CupertinoIcons.profile_circled, size: _iconSize(3), color: _iconColor(3)),
            ),
          ],
        ),
      ),
    );
  }
}


/*
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
 */
