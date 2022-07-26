import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pinterest_app_ui/models/single_photo_model.dart';

class MakeImage extends StatelessWidget {
  final SinglePhotoModel singlePhotoModel;

  const MakeImage({Key? key, required this.singlePhotoModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return kIsWeb
        ? ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: AspectRatio(
              aspectRatio: (singlePhotoModel.width ?? 16) /
                  (singlePhotoModel.height ?? 9),
              child: Image.network(singlePhotoModel.urls!.smallS3!),
            ),
          )
        : ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: AspectRatio(
              aspectRatio: (singlePhotoModel.width ?? 16) /
                  (singlePhotoModel.height ?? 9),
              child: AspectRatio(
                aspectRatio: (singlePhotoModel.width ?? 16) /
                    (singlePhotoModel.height ?? 9),
                child: Image.network(singlePhotoModel.urls!.smallS3!),
              ),
            ),
          );
  }
}
