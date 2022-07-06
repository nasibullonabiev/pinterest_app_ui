import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {

  static const String id = 'profile_page';

  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

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
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: Container(
          margin: const EdgeInsets.all(5),
          height: 20,
          width: 20,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage("assets/images/img_13.png")
            )
          ),
        ),
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
                  "Boards",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Pins",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),

        ),
        actions:  [
          GestureDetector(
            onTap: (){},
              child: const Icon(Icons.settings,color: Colors.black,size: 25,))
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10,),
          Row(

            children: [
              const SizedBox(width: 10,),
              Container(
                height: 50,
                width: 300,
                color: Colors.grey.shade300,
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search,color: Colors.grey,size: 25,),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              IconButton(onPressed: (){},
                  icon: const Icon(Icons.display_settings_rounded,size: 30,)),
              IconButton(onPressed: (){},
                  icon: const Icon(Icons.add,size: 30,))
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              const SizedBox(width: 5,),
              Container(
                height: 300,
                width: 250,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/img_4.png"),
                        fit: BoxFit.fill
                    ),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20)
                    )
                ),
              ),
              const SizedBox(width: 3,),
              Column(
                children: [
                  Container(
                    height: 148,
                    width: 150,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)
                        ),
                        image: DecorationImage(
                            image: AssetImage("assets/images/img_6.png",),
                            fit: BoxFit.fill
                        )
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Container(
                    height: 148,
                    width: 150,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)
                        ),
                        image: DecorationImage(
                            image: AssetImage("assets/images/img_8.png"),
                            fit: BoxFit.fill
                        )
                    ),
                  )
                ],
              )
            ],
          ),

          const SizedBox(height: 10,),

          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text("Title",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
          ),

          const SizedBox(height: 30,),

          Row(
            children: [
              const SizedBox(width: 5,),
              Container(
                height: 300,
                width: 250,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/img_2.png"),
                        fit: BoxFit.fill
                    ),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20)
                    )
                ),
              ),
              const SizedBox(width: 3,),
              Column(
                children: [
                  Container(
                    height: 148,
                    width: 150,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)
                        ),
                        image: DecorationImage(
                            image: AssetImage("assets/images/img_14.png",),
                            fit: BoxFit.fill
                        )
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Container(
                    height: 148,
                    width: 150,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)
                        ),
                        image: DecorationImage(
                            image: AssetImage("assets/images/img_15.png"),
                            fit: BoxFit.fill
                        )
                    ),
                  )
                ],
              )
            ],
          ),

          const SizedBox(height: 10,),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text("Title",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
          ),

          const SizedBox(height: 30,),


          Row(
            children: [
              const SizedBox(width: 5,),
              Container(
                height: 300,
                width: 250,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/img_2.png"),
                        fit: BoxFit.fill
                    ),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20)
                    )
                ),
              ),
              const SizedBox(width: 3,),
              Column(
                children: [
                  Container(
                    height: 148,
                    width: 150,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)
                        ),
                        image: DecorationImage(
                            image: AssetImage("assets/images/img_14.png",),
                            fit: BoxFit.fill
                        )
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Container(
                    height: 148,
                    width: 150,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)
                        ),
                        image: DecorationImage(
                            image: AssetImage("assets/images/img_15.png"),
                            fit: BoxFit.fill
                        )
                    ),
                  )
                ],
              )
            ],
          ),



        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),

        height: 130,
        width: 30,
        child: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,

          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
                label: ''
            ),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search),
                label: ''
            ),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.mail),
                label: ''
            ),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.circle),
                label: ''
            )

          ],
        ),
      ),

    );
  }
}
