import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../models/single_photo_model.dart';
import 'h_make_shimmer.dart';

class HMakeImages extends StatelessWidget {
  final SinglePhotoModel singlePhoto;

  const HMakeImages({
    Key? key,
    required this.singlePhoto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('chiqarildi');
    return AspectRatio(
      aspectRatio: (singlePhoto.width ?? 16) / (singlePhoto.height ?? 9),
      child: singlePhoto.urls?.regular != null? CachedNetworkImage(
        imageUrl: singlePhoto.urls!.smallS3!,
        progressIndicatorBuilder: (context, url, downloadProgress) => const HMakeShimmer(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ): Container(),
    );
  }
}
