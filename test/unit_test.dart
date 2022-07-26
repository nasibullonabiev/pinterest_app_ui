import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pinterest_app_ui/models/link_model.dart';
import 'package:pinterest_app_ui/models/photo_statictics_model.dart';
import 'package:pinterest_app_ui/models/seach_collections_result_model.dart';
import 'package:pinterest_app_ui/models/search_photos_result_model.dart';
import 'package:pinterest_app_ui/models/search_user_result_model.dart';
import 'package:pinterest_app_ui/models/single_photo_model.dart';
import 'package:pinterest_app_ui/models/user_s_collections_model.dart';
import 'package:pinterest_app_ui/models/user_s_liked_photos.dart';
import 'package:pinterest_app_ui/models/user_s_photos_model.dart';
import 'package:pinterest_app_ui/models/user_s_statistics.dart';
import 'package:pinterest_app_ui/models/users_public_profile_model.dart';
import 'package:pinterest_app_ui/services/network_service.dart';

void main() {

  group("Users", () {
    test("Get users public profile", () async {
      String? response = await NetworkService.GET(
        api: NetworkService.API_GET_USER_PROFILE('Abdulaziz'),
        params: NetworkService.paramToGetUsersProfile('Abdulaziz'),
      );
      if (response != null) {
        UsersPublicProfileModel usersPublicProfileModel =
        UsersPublicProfileModel.fromJson(jsonDecode(response));
        print(usersPublicProfileModel);
      }
    });

    test("Get users portfolio link", () async {
      String? response = await NetworkService.GET(
        api: NetworkService.API_TO_GET_USER_PORFOLIO_LINK('2e232x45c34c'),
        params: NetworkService.paramToGetUsersProfile('23423x23x2x'),
      );
      print(response);
      if (response != null) {
        LinkModel link = LinkModel.fromJson(jsonDecode(response));
        print("===================" + link.toString());
      }
    });

    test("Get user's photos", () async {
      String? response = await NetworkService.GET(
        api: NetworkService.API_GET_USER_S('muhammadjon', "photos"),
        params: NetworkService.paramToGetUserSPhotos(stats: true),
      );
      if (response != null) {
        List a = jsonDecode(response);
        List<UserSPhotosModel> userS =
        a.map((e) => UserSPhotosModel.fromJson(e)).toList();
        print(userS);
      }
    });

    test("List a user's liked photos", () async {
      String? response = await NetworkService.GET(
        api: NetworkService.API_GET_USER_S('muhammadjon', 'likes'),
        params: NetworkService.paramToGetUserSLikedPhotos(),
      );
      if (response != null) {
        List a = jsonDecode(response);
        List<UserSLikedPhotos> userS =
        a.map((e) => UserSLikedPhotos.fromJson(e)).toList();
        print(userS);
      }
    });

    test("List a user's collections", () async {
      String? response = await NetworkService.GET(
        api: NetworkService.API_GET_USER_S('muhammadjon', 'collections'),
        params: NetworkService.paramToGetUserSCollections(),
      );
      if (response != null) {
        List a = jsonDecode(response);
        List<UserSCollectionsModel> userSCollections = a.map((e) => UserSCollectionsModel.fromJson(e)).toList();
        print(userSCollections);
      }
      expect(response, isNotNull);
    });


    test("List a user's liked photos", () async {
      String? response = await NetworkService.GET(
        api: NetworkService.API_GET_USER_S('muhammadjon', 'statistics'),
        params: NetworkService.paramToGetUserSStatistics(),
      );
      if (response != null) {
        Map json = jsonDecode(response);
        UserSStatistics userS = UserSStatistics.fromJson(json);
        print(userS);
      }
      expect(response, isNotNull);
    });
  });

  group("Photos", () {
    test("Get all photos", () async {
      String? response = await NetworkService.GET(
          api: NetworkService.API_GET_ALL_IMAGES, params: {"page": '1'});
      if (response != null) {
        List res = jsonDecode(response);
        List<SinglePhotoModel> list =
        res.map((json) => SinglePhotoModel.fromJson(json)).toList();
        print(list);
      }
    });

    test("Get a photo", () async {
      String? response = await NetworkService.GET(
        api: NetworkService.API_GET_ALL_IMAGES,
        params: NetworkService.paramToGetImages(page: 1),
      );
      if (response != null) {
        List res = jsonDecode(response);
        List<SinglePhotoModel> list = res.map((json) => SinglePhotoModel.fromJson(json)).toList();
        debugPrint("$list");
      }
    });

    test("Get a random photo", () async {
      String? response =
      await NetworkService.GET(api: NetworkService.API_GET_A_RANDOM_PHOTO);
      if (response != null) {
        SinglePhotoModel photo =
        SinglePhotoModel.fromJson(jsonDecode(response));
        debugPrint("$photo");
      }
    });

    test("Get a photo statistics", () async {
      String? response = await NetworkService.GET(
          api: NetworkService.API_GET_A_PHOTO('m9_Hk36qomk', "statistics"));
      if (response != null) {
        PhotoStatistics photo = PhotoStatistics.fromJson(jsonDecode(response));
        debugPrint("$photo");
      }
    });

    test("Download photo", () async {
      String? response = await NetworkService.GET(
          api: NetworkService.API_GET_A_PHOTO('m9_Hk36qomk', "download"));
      if (response != null) {
        LinkModel photo = LinkModel.fromJson(jsonDecode(response));
        debugPrint("$photo");
      }
    });
  });

  group("Search", () {
    test("Search photos", () async {
      String? response = await NetworkService.GET(
        api: NetworkService.API_TO_SEARCH('/photos'),
        params: NetworkService.paramToSearchPhoto(query: 'office', perPage: 1),
      );
      if (response != null) {
        Map json = jsonDecode(response);
        SearchResultModel searchResultModel = SearchResultModel.fromJson(json);
        print(searchResultModel.results);
      }
    });

    test("Search collections", () async {
      String? response = await NetworkService.GET(
        api: NetworkService.API_TO_SEARCH('/collections'),
        params: NetworkService.paramToSearchCollectionOrUsers(
            query: 'ali', perPage: 1),
      );
      if (response != null) {
        Map json = jsonDecode(response);
        SearchCollectionsResultModel searchResultModel =
        SearchCollectionsResultModel.fromJson(json);
        print(searchResultModel.results);
      }
    });
    test("Search users", () async {
      String? response = await NetworkService.GET(
        api: NetworkService.API_TO_SEARCH('/users'),
        params: NetworkService.paramToSearchCollectionOrUsers(
            query: 'ali', perPage: 1),
      );
      if (response != null) {
        Map json = jsonDecode(response);
        SearchUserResultModel searchUserResultModel =
        SearchUserResultModel.fromJson(json);
        print(searchUserResultModel.results);
      }
    });
  });
}
