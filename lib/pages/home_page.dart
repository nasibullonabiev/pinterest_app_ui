import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pinterest_app_ui/pages/message_page.dart';
import 'package:pinterest_app_ui/pages/profile_page.dart';
import 'package:pinterest_app_ui/pages/serch_page.dart';

import '../models/post_model.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: MasonryGridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          itemCount: posts.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    posts[index].imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      posts[index].title,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 12),
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              padding: const EdgeInsets.symmetric(vertical: 30),
                              height: MediaQuery.of(context).size.height / 2,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(35),
                              ),
                              child: Column(
                                children: [
                                  const Text(
                                    "Share to",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  const SizedBox(
                                    height: 17,
                                  ),
                                  SizedBox(
                                    height: 100.0,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: sharePosts.length,
                                      itemBuilder: (context, index) {
                                        return SizedBox(
                                          width: 90,
                                          child: Column(children: [
                                            CircleAvatar(
                                              backgroundColor: Colors.black,
                                              radius: 35,
                                              backgroundImage: AssetImage(
                                                'assets/images/${sharePosts[index].imageUrl}',
                                              ),
                                            ),
                                            const Spacer(),
                                            Text(
                                              sharePosts[index].id,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ]),
                                        );
                                      },
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 7, horizontal: 15),
                                    child: Divider(
                                      color: Colors.grey,
                                      height: 5,
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "This Pin was inspired by your recent activity",
                                          style: TextStyle(fontSize: 14),
                                          textAlign: TextAlign.left,
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          "Hide",
                                          style: TextStyle(
                                              fontSize: 19,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                          "Report",
                                          style: TextStyle(
                                              fontSize: 19,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  GestureDetector(
                                    onTap: () => Navigator.pop(context),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 26),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.grey.shade300),
                                      child: const Text("Close",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600)),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: const Icon(Icons.more_horiz),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
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
                image: AssetImage("assets/images/ic_message.jpg"),
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
  }
}


final List<Post> posts = [
  Post(
    'id0',
    'https://images.unsplash.com/photo-1568890686150-64af65720e69?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
    'Spiderman wall art',
  ),
  Post(
    'id1',
    'https://images.unsplash.com/photo-1634828221818-503587f33d02?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1665&q=80',
    'Comic book collection',
  ),
  Post(
    'id2',
    'https://images.unsplash.com/photo-1596727147705-61a532a659bd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbWljfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
    'Powerful Baby Groot',
  ),
  Post(
    'id3',
    'https://images.unsplash.com/photo-1611604548018-d56bbd85d681?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
    'DC best friends',
  ),
  Post(
    'id4',
    'https://images.unsplash.com/photo-1624562563808-170065db4fcc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
    'Spiderman in action',
  ),
  Post(
    'id5',
    'https://images.unsplash.com/photo-1534809027769-b00d750a6bac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
    'Will he save Gwen?',
  ),
  Post(
    'id6',
    'https://images.unsplash.com/photo-1601645191163-3fc0d5d64e35?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1035&q=80',
    'Collector Edition',
  ),
  Post(
    'id7',
    'https://images.unsplash.com/photo-1569003339405-ea396a5a8a90?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Y29taWN8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
    'Captain America strikes',
  ),
  Post(
    'id8',
    'https://images.unsplash.com/photo-1531259683007-016a7b628fc3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fGNvbWljfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
    'The Dark Knight',
  ),
  Post(
    'id9',
    'https://images.unsplash.com/photo-1608889175250-c3b0c1667d3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fGNvbWljJTIwc3VwZXJtYW58ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
    'Snap snap',
  ),
];
final List<Post> sharePosts = [
  Post(
    'Message',
    'message.png',
    '',
  ),
  Post(
    'WhatsApp',
    'whatsapp.png',
    '',
  ),
  Post(
    'Messenger',
    'messenger.png',
    '',
  ),
  Post(
    'Messages',
    'messages.png',
    '',
  ),
  Post(
    'Facebook',
    'facebook.png',
    '',
  ),
];

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

