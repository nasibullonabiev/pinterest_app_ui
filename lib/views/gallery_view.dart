import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pinterest_app_ui/views/image_view.dart';
import '../models/single_photo_model.dart';
import '../services/network_service.dart';

class GalleryView extends StatefulWidget {
  final int crossAxisCount;
  const GalleryView({Key? key, this.crossAxisCount = 2}) : super(key: key);

  @override
  State<GalleryView> createState() => _GalleryViewState();
}

class _GalleryViewState extends State<GalleryView> {
  List<SinglePhotoModel> allPhotos = [];
  final ScrollController scrollController = ScrollController();
  int perPage = 20;
  int page = 1;

  @override
  void initState() {
    super.initState();
    /// this for scroll
    scrollController.addListener(() {
      if (scrollController.position.maxScrollExtent == scrollController.offset) {
        getImageFromNet.then((value) {
          allPhotos.addAll(value ?? []);
          setState(() {});
        });
      }
    });
    getImageFromNet.then((value) {
      allPhotos.addAll(value ?? []);
      setState(() {});
    });
  }

  Future<List<SinglePhotoModel>?> get getImageFromNet async {
    String? response = await NetworkService.GET(
        api: NetworkService.API_GET_ALL_IMAGES, params:NetworkService.paramToGetImages(page: page++, perPage: perPage));
    if (response != null) {
      List res = jsonDecode(response);
      List<SinglePhotoModel> list = res.map((json) => SinglePhotoModel.fromJson(json)).toList();
      return list;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      controller: scrollController,
      crossAxisCount: widget.crossAxisCount,
      itemCount: allPhotos.length,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      padding: const EdgeInsets.all(10),
      itemBuilder: (context, index) {
        return MakeImage(singlePhotoModel: allPhotos[index],);
      },
    );
  }
}
