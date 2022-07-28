import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../models/single_photo_model.dart';
import '../pages/mobile/detail_screen.dart';


class ImageView extends StatefulWidget {
  final SinglePhotoModel image;
  final int crossAxisCount;
  const ImageView({Key? key, required this.image, required this.crossAxisCount}) : super(key: key);

  @override
  State<ImageView> createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {

  late SinglePhotoModel image;
  @override
  void initState() {
    super.initState();
    _convertData();
  }

  void _convertData() {
    image = widget.image;
    setState(() {});
  }
  void openDetailPage() {
    Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>  DetailPage(image: image, crossAxisCount: widget.crossAxisCount,),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var begin = const Offset(0.0, 1.0);
            var end = Offset.zero;
            var curve = Curves.ease;
            var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // #image
        GestureDetector(
          // onDoubleTap: _favorite,
          onTap: openDetailPage,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: AspectRatio(
              aspectRatio: (image.width! /100) / (image.height! /100),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CachedNetworkImage(
                    imageUrl: image.urls!.thumb!,
                    placeholder: (context, url) => Container(
                      color: Colors.primaries[Random().nextInt(18) % 18],
                    ),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                  ),
                ],
              ),
            ),
          ),
        ),

        // #image_data
        ListTile(
          dense: true,
          contentPadding: const EdgeInsets.only(bottom: 10, top: 5, left: 5),
          title: image.createdAt != null && image.createdAt!.isNotEmpty
              ? Text(image.createdAt ?? "", maxLines: 1, overflow: TextOverflow.ellipsis,) : null,
          trailing: IconButton(
            splashRadius: 20,
            onPressed: () {},
            icon: const Icon(Icons.more_horiz_outlined),
          ),
        ),
      ],
    );
  }
}
