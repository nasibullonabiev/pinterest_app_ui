import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                  child: SizedBox(
                    height: 350,
                    width: 250,
                    child: Image.asset("assets/images/img_4.png",fit: BoxFit.cover,),
                  ),
                ),

                const SizedBox(width: 5,),

                Expanded(
                  child: SizedBox(
                    height: 350,
                    width: 250,
                    child: GridView.count(crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    children: [
                      Image.asset("assets/images/img_5.png",fit: BoxFit.fill,),
                      Image.asset("assets/images/img_6.png",fit: BoxFit.fill,),
                      Image.asset("assets/images/img_7.png",fit: BoxFit.cover,),
                      Image.asset("assets/images/img_8.png",fit: BoxFit.fill,)

                    ],
                    )
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
