import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinterest_app_ui/pages/profile_page.dart';
import 'package:pinterest_app_ui/pages/serch_page.dart';

import 'home_page.dart';

class MessagePage extends StatefulWidget {

  static const String id = 'message_page';

  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {

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
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
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
                  "Updates",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Inbox",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children:   [
                  const SizedBox(width: 5,height: 10,),
                  const Icon(Icons.circle,size: 10,color: Colors.red,),
                  const SizedBox(width: 5,),
                  const Text("See what Kiki Smith and 7 other friends",style: TextStyle(color: Colors.black),),
                  const SizedBox(width: 10,),
                  Stack(
                    children:    [
                     Container(
                       margin: const EdgeInsets.only(top: 10),
                       height: 40,
                       width: 40,
                       decoration: const BoxDecoration(
                         image: DecorationImage(image: AssetImage("assets/images/img_12.png")),
                         shape: BoxShape.circle,
                         color: Colors.red
                       ),
                     ),

                     Container(
                       margin: const EdgeInsets.only(top: 10),
                       height: 40,
                       width: 40,
                       decoration: const BoxDecoration(
                           image: DecorationImage(image: AssetImage("assets/images/img_12.png")),
                           shape: BoxShape.circle,
                           color: Colors.red
                       ),
                     ),



                    ],
                  )

                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 120),
                child: Text("in the Home decor, Food and drink and 1"),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 318),
                child: Text("other topic"),
              ),

              const SizedBox(height: 30,),
            ],
          ),
          Column(
            children: [
              Row(
                children: const [
                  SizedBox(width: 5,),
                  Icon(Icons.circle,color: Colors.red,size: 10,),
                  SizedBox(width: 5,),
                  Text("Patio Lights Strings Ideas, Blueberry Pancakes and")
                ],
              ),
              Row(
                children: const [
                  SizedBox(width: 20,),
                  Text("more ideas to search for"),
                  SizedBox(width: 5,),
                  Text("5h",style: TextStyle(color: Colors.grey),)
                ],
              ),
            ],
          ),
         const SizedBox(height: 20,),
         SizedBox(
           height: 400,
           child: GridView.count(crossAxisCount: 2,
           padding: const EdgeInsets.all(10),
           mainAxisSpacing: 5,
           crossAxisSpacing: 5,
           children: [
             Container(
               height: 50,
               decoration: const BoxDecoration(
                 color: Colors.blue,
                 image: DecorationImage(image: AssetImage("assets/images/img.png"),fit: BoxFit.cover),
                 borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(20)
                 ),
               ),
               child:  const Center(
                 child: Text("Title name here",style: TextStyle(
                     color: Colors.white,fontSize: 20
                 ),),
               ),

             ),
             Container(
               height: 50,
               decoration: const BoxDecoration(
                 color: Colors.green,
                 image: DecorationImage(image: AssetImage("assets/images/img_1.png"),fit: BoxFit.cover),
                 borderRadius: BorderRadius.only(topRight: Radius.circular(20),

                 ),
               ),
               child:  const Center(
                 child: Text("Title name here",style: TextStyle(
                     color: Colors.white,fontSize: 20
                 ),),
               ),


             ),
             Container(
               height: 50,
               decoration: const BoxDecoration(
                 color: Colors.red,
                 image: DecorationImage(image: AssetImage("assets/images/img_2.png"),fit: BoxFit.cover),
                 borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),
                     bottomLeft: Radius.circular(20)
                 ),
               ),
               child:  const Center(
                 child: Text("Title name here",style: TextStyle(
                     color: Colors.white,fontSize: 20
                 ),),
               ),

             ),
             Container(
               height: 50,
               decoration: const BoxDecoration(
                 color: Colors.yellow,
                 image: DecorationImage(image: AssetImage("assets/images/img_3.png"),fit: BoxFit.cover),
                 borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),
                     bottomLeft: Radius.circular(20)
                 ),
               ),
               child: const Center(
                 child: Text("Title name here",style: TextStyle(
                   color: Colors.white,fontSize: 20
                 ),),
               ),


             )
           ],

           ),
         ),
        
        const SizedBox(height: 50,),
          Row(
            children: const [
              SizedBox(width: 5,),
              Icon(Icons.circle,color: Colors.red,size: 10),
              SizedBox(width: 5,),
              Text("Your Pin was Saved 2 times"),
              SizedBox(width: 5,),
              Text("2d",style: TextStyle(color: Colors.grey
              ),)
            ],
          ),

          Container(
            margin: const EdgeInsets.only(left: 10,right: 10),
            height: 250,
            width: 400,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30)
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 350,
                    width: 250,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)
                      ),
                      image: DecorationImage(image: AssetImage("assets/images/img_4.png"),
                      fit: BoxFit.cover
                      )
                    ),

                  ),
                ),

                const SizedBox(width: 2,),

                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 125,
                            width: 95,
                            decoration: const BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/images/img_5.png"),
                              fit: BoxFit.cover
                              ),
                                color: Colors.red,

                            ),

                          ),

                          const SizedBox(width: 2,),

                          Container(
                            height: 125,
                            width: 95,
                            decoration: const BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/img_6.png"),
                                fit: BoxFit.cover
                                ),
                                color: Colors.red,
                                borderRadius: BorderRadius.only(topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20)
                                )
                            ),

                          ),
                        ],
                      ),
                      const SizedBox(height: 2,),
                      Row(
                        children: [
                          Container(
                            height: 122,
                            width: 95,
                            decoration: const BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/images/img_7.png"),
                              fit: BoxFit.cover
                              ),
                                color: Colors.red,
                                
                            ),

                          ),

                          const SizedBox(width: 2,),

                          Container(
                            height: 122,
                            width: 95,
                            decoration: const BoxDecoration(
                              image: DecorationImage(image: AssetImage(("assets/images/img_8.png")
                              ),
                              fit: BoxFit.cover
                              ),
                                color: Colors.red,
                                borderRadius: BorderRadius.only(topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20)
                                )
                            ),

                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),

            ),

          const SizedBox(height: 30,),
          Row(
            children: const [
              SizedBox(width: 10,),
              Icon(Icons.circle,color: Colors.red,size: 10,),
              SizedBox(width: 5,),
              Text("13 more ideas for your board Food"),
              SizedBox(width: 5,),
              Text("2d",style: TextStyle(color: Colors.grey),)
            ],
          ),
          const SizedBox(height: 10,),

          SizedBox(
              height: 450,
              width: 250,
              child: GridView.count(crossAxisCount: 3,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                children: [
                  Image.asset("assets/images/img_9.png",fit: BoxFit.fill,),
                  Image.asset("assets/images/img_10.png",fit: BoxFit.fill,),
                  Image.asset("assets/images/img_11.png",fit: BoxFit.cover,),

                ],
              )
          ),



        ],
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