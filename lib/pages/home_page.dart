import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinterest_app_ui/pages/message_page.dart';
import 'package:pinterest_app_ui/pages/profile_page.dart';
import 'package:pinterest_app_ui/pages/search_page.dart';
import 'mobile/home_screen.dart';

class HomePage extends StatefulWidget {
  final int crossAxisCount;
  static const id = "";
  const HomePage({Key? key, this.crossAxisCount = 2}) : super(key: key);

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
      body: Row(
        children: [
          Visibility(
            visible: widget.crossAxisCount > 3,
            child: NavigationRail(
                minWidth: 100,
                onDestinationSelected: _onPageChanged,
                destinations: [
                  NavigationRailDestination(
                    label: const Text("Home"),
                    icon: Icon(Icons.home_filled, size: _iconSize(0), color: _iconColor(0)),
                  ),
                  NavigationRailDestination(
                    label: const Text("Search"),
                    icon: Icon(Icons.search, size: _iconSize(1), color: _iconColor(1)),
                  ),
                  NavigationRailDestination(
                    label: const Text("Category"),
                    icon: Icon(CupertinoIcons.chat_bubble_text_fill, size: _iconSize(2), color: _iconColor(2)),
                  ),
                  NavigationRailDestination(
                    label: const Text("Profile"),
                    icon: Icon(CupertinoIcons.profile_circled, size: _iconSize(3), color: _iconColor(3)),
                  ),
                ],
                selectedIndex: _initialPage
            ),
          ),
          SizedBox(
            width: widget.crossAxisCount > 3 ? MediaQuery.of(context).size.width - 100 : MediaQuery.of(context).size.width,
            child: IndexedStack(
              index: _initialPage,
              children: [
                HomeScreen(crossAxisCount: widget.crossAxisCount,),
                const SearchPage(),
                const MessagePage(),
                const ProfilePage(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: widget.crossAxisCount <= 3 ? Container(
        height: 70,
        margin: const EdgeInsets.symmetric(horizontal: 60),
        padding: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(35),
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
      ) : null,
    );
  }
}

