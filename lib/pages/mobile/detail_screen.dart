import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pinterest_app_ui/models/single_photo_model.dart';
import '../../services/network_service.dart';
import '../../views/gallery_view.dart';

class DetailPage extends StatefulWidget {
  final int crossAxisCount;
  final SinglePhotoModel image;

  const DetailPage({Key? key, required this.image, this.crossAxisCount = 2}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {


  bool isLike = false;
  bool visible = false;

  late SinglePhotoModel image;
  int vote = 0;
  @override
  void initState() {
    super.initState();
    _convertData();
  }

  void _convertData() {
    image = widget.image;
    setState(() {});
  }

  void favorite(){
    setState(() {
      isLike = !isLike;
      visible = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            splashRadius: 35,
            onPressed: () {},
            icon: const Icon(Icons.more_horiz_outlined, size: 30,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                GestureDetector(
                  onDoubleTap: favorite,
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                    ),
                    foregroundDecoration: BoxDecoration(
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.center,
                            colors: [
                              Colors.black.withOpacity(0.9),
                              Colors.black.withOpacity(0.6),
                              Colors.black.withOpacity(0.2),
                              Colors.black.withOpacity(0.1),
                            ]
                        )
                    ),
                    child: AspectRatio(
                      aspectRatio: (image.width! /100) / (image.height! /100),
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl: image.urls!.thumb!,
                        placeholder: (context, url) => Container(
                          color: Colors.primaries[Random().nextInt(18) % 18],
                        ),
                        errorWidget: (context, url, error) => const Icon(Icons.error),
                      ),
                    ),
                  ),
                ),

                if (!isLike && visible)
                  Center(
                      child: Lottie.asset(
                          "assets/lottie/lottie_broken_heart.json",
                          repeat: false, onLoaded: (lottieComposition) {
                        Future.delayed(
                          lottieComposition.duration,
                              () {
                            setState(() {
                              visible = false;
                            });
                          },
                        );
                      })),
                if (isLike && visible)
                  Center(
                      child: Lottie.asset("assets/lottie/lottie_heart.json",
                          repeat: false, onLoaded: (lottieComposition) {
                            Future.delayed(
                              lottieComposition.duration,
                                  () {
                                setState(() {
                                  visible = false;
                                });
                              },
                            );
                          }))
              ],
            ),
            Container(
              height: 180,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: image.user!.profileImage!.small != null ? NetworkImage(image.user!.profileImage!.small!): NetworkImage(image.urls!.thumb!),
                    ),
                    title: image.user!.firstName !=null ? Text(image.user!.firstName!):const Text("No name"),
                    subtitle: image.user!.instagramUsername != null ? Text(image.user!.instagramUsername!): const Text("No instagram profile"),
                    trailing: IconButton(
                      icon: vote == 0
                          ? const Icon(Icons.thumb_up_alt_outlined, size: 30, color: Colors.grey)
                          : const Icon(Icons.thumb_up_alt, size: 32, color: Colors.red),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      const Expanded(
                        flex: 2,
                        child: SizedBox.shrink(),
                      ),

                      // #favorite
                      Expanded(
                        flex: 3,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              primary: !isLike ?  const Color.fromRGBO(239, 239, 239, 1) : Colors.pink,
                              shape: const StadiumBorder(),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 15),
                            ),
                            child: Text("Favorite", style: TextStyle(color: !isLike ? Colors.black : Colors.black, fontSize: 17.5),)
                        ) ,
                      ),
                      const SizedBox(width: 15,),

                      // #save
                      Expanded(
                        flex: 3,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Colors.red,
                            shape: const StadiumBorder(),
                            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                          ),
                          child: const Text("Save", style: TextStyle(fontSize: 17.5, fontWeight: FontWeight.w600),),
                        ),
                      ),

                      // #share
                      Expanded(
                        flex: 2,
                        child: IconButton(
                          icon: const Icon(Icons.share, size: 30,),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 2,),
            Container(
              constraints:  BoxConstraints(
                  minWidth: double.infinity,
                  minHeight: MediaQuery.of(context).size.height
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  Container(
                    height: 65,
                    padding: const EdgeInsets.only(top: 10),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    child: const Text("Similar", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),),
                  ),
                  GalleryView(api: "${NetworkService.API_GET_USERS_PHOTOS}${image.user!.username}/photos", crossAxisCount: widget.crossAxisCount, params: NetworkService.paramsEmpty(), physics: const NeverScrollableScrollPhysics(),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
