import 'dart:convert';
import 'package:flutter/material.dart' hide Image;
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../models/single_photo_model.dart';
import '../services/network_service.dart';
import 'image_view.dart';

class CollectionView extends StatefulWidget {
  final int crossAxisCount;
  final String api;
  final Map<String, String> params;
  final ScrollPhysics? physics;
  const CollectionView({Key? key, this.crossAxisCount = 2, required this.api, required this.params, this.physics}) : super(key: key);

  @override
  State<CollectionView> createState() => _GalleryViewState();
}

class _GalleryViewState extends State<CollectionView> with AutomaticKeepAliveClientMixin{
  Map<String, dynamic> response ={};
  List items = [];
  List<SinglePhotoModel> images = [];
  ScrollController controller = ScrollController();
  Map<String, String> params = {};
  int currentPage = 0;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    params = widget.params;
    apiGetAllImage(currentPage++);
    controller.addListener(loadMore);
  }

  void apiGetAllImage(int page) async {
    params['page'] = page.toString();
    String? resAllImages = await NetworkService.GET(widget.api, params);
    if(resAllImages != null){
      response = json.decode(resAllImages);
      items.addAll(response["results"]);
      print(items);
      images.addAll(items.map((e) => SinglePhotoModel.fromJson(e)).toList());
      print(images);
      //   debugPrint(response.toString());
      //   print("************");
      //   debugPrint("SHUTSHUTSHUT ${response['results']} SHUT UPP");


      //items.addAll(imageListFromJson(resAllImages));
      setState(() {});
    }else{
      debugPrint("Something went wrong");
    }
    // List res = jsonDecode(response);
    // List<SinglePhotoModel> list = res.map((json) => SinglePhotoModel.fromJson(json)).toList();
    // return list;

  }

  void loadMore() {
    print("controller.position.maxScrollExtent: ${controller.position.maxScrollExtent}");
    print("controller.offset: ${controller.position.pixels}");
    if(controller.position.maxScrollExtent == controller.position.pixels) {
      apiGetAllImage(currentPage++);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      shrinkWrap: true,
      controller: controller,
      crossAxisCount: widget.crossAxisCount,
      itemCount: items.length,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      padding: const EdgeInsets.all(10),
      itemBuilder: (context, index) {
        return ImageView(image: images[index], crossAxisCount: widget.crossAxisCount,);
      },
    );
  }
}

