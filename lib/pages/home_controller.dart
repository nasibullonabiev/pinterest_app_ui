import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../models/single_photo_model.dart';
import 'home_logic.dart';


class HomeController extends GetxController {
  List<SinglePhotoModel> photos = [];
  int t = 0;
  int crossAxisCount = 2;
  bool isCanScroll = true;
  final ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    print('aa');
    super.onInit();
    getImageFromNet;
    scrollController.addListener(() {
      if (scrollController.position.maxScrollExtent == scrollController.offset) {
        getImageFromNet;
      }
    });
  }

  Future<void> get getImageFromNet async {
    List<SinglePhotoModel> result = await HomeLogic.fetch(++t);
    if (result.isEmpty) {
      isCanScroll = false;
      update();
      return;
    }
    photos = [...photos, ...result];
    update();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
