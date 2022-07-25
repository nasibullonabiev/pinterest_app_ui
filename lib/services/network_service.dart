import 'package:http/http.dart' as http;
import 'dart:developer' as developer;

class NetworkService {
  static const Map<String, String> _headerGet = {
    "Authorization": "Client-ID P8Pt6IM8aufrquUpUELtbfVbOwW-G-X9M-iabEx1nko"
  };
  static const String _baseUrl = "api.unsplash.com";
  static const Map<String, String> _params = {};
  static const String API_GET_ALL_IMAGES = "/photos";
  static const String _API_SEARCH = "/search/";
  static const String API_GET_A_RANDOM_PHOTO = "/photos/random";
  static const String _apiToGetUserProfile = "/users/";

  static String API_GET_A_PHOTO(String index, String type) {
    return '$API_GET_ALL_IMAGES/$index/$type';
  }

  static String API_GET_USER_PROFILE(String username) {
    return '$_apiToGetUserProfile$username';
  }

  static String API_GET_USER_S(String username, String type) {
    return "/users/$username/$type";
  }

  static String API_TO_SEARCH(String type) {
    return _API_SEARCH + type;
  }

  static String API_TO_GET_USER_PORFOLIO_LINK(String username) {
    return '$_apiToGetUserProfile$username/portfolio';
  }

  // collections,
  static Map<String, String> paramToSearchPhoto({
    required query,
    int page = 1,
    int perPage = 10,
    String orderBy = 'relevant',
    String contentFilter = 'low',
    String orientation = 'portrait',
  }) {
    return {
      'query': query,
      'page': '$page',
      'per_page': '$perPage',
      'order_by': orderBy,
      'content_filter': contentFilter,
      'orientation': orientation,
    };
  }

  static Map<String, String> paramToGetUserSPhotos({
    int page = 1,
    int perPage = 10,
    String orderBy = 'latest',
    bool stats = false,
    String resolution = 'days',
    int quantity = 30,
    String orientation = 'landscape',
  }) {
    return {
      "page": page.toString(),
      "per_page": perPage.toString(),
      "order_by": orderBy,
      "stats": stats.toString(),
      "resolution": resolution,
      "quantity": quantity.toString(),
      "orientation": orientation,
    };
  }
  static Map<String, String> paramToGetUserSLikedPhotos({
    int page = 1,
    int perPage = 10,
    String orderBy = 'latest',
    String orientation = 'landscape',
  }) {
    return {
      "page": page.toString(),
      "per_page": perPage.toString(),
      "order_by": orderBy,
      "orientation": orientation,
    };
  }

  static Map<String, String> paramToGetUserSCollections({
    int page = 1,
    int perPage = 10,
  }) {
    return {
      "page": page.toString(),
      "per_page": perPage.toString(),
    };
  }

  static Map<String, String> paramToGetImages({
    int page = 1,
    int perPage = 15,
    String orderBy = 'latest',
  }) {
    return {
      'page': '$page',
      'per_page': '$perPage',
      'order_by': orderBy,
    };
  }

  static Map<String, String> paramToGetUserSStatistics({
    String resolution = 'days',
    int quantity = 30,
  }) {
    return {
      "resolution": resolution,
      "quantity": quantity.toString(),
    };
  }

  static Map<String, String> paramToSearchCollectionOrUsers({
    required String query,
    int page = 1,
    int perPage = 10,
  }) {
    return {
      'query': query,
      'page': '$page',
      'per_page': '$perPage',
    };
  }

  static Map<String, String> paramToGetUsersProfile(String username) {
    return {"username": username};
  }

  static Future<String?> GET({
    required String api,
    Map<String, String> params = _params,
    header = _headerGet,
    String selectedBaseUrl = _baseUrl,
  }) async {
    Uri url = Uri.https(selectedBaseUrl, api, params);
    http.Response? response = await http.get(url, headers: header);
    print(url);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    }
    return null;
  }
}
