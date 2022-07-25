import 'dart:convert';
import '../models/single_photo_model.dart';
import '../services/network_service.dart';

class HomeLogic {
  static Future<List<SinglePhotoModel>> fetch(int t) async {
    String? response = await NetworkService.GET(
      api: NetworkService.API_GET_ALL_IMAGES,
      params: NetworkService.paramToGetImages(page: t),
    );
    if (response != null) {
      List res = jsonDecode(response);
      List<SinglePhotoModel> list = res.map((json) => SinglePhotoModel.fromJson(json)).toList();
      return list;
    }
    return [];
  }
}
