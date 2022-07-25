import 'single_photo_model.dart';

class SearchUserResultModel {
  SearchUserResultModel({
      this.total, 
      this.totalPages, 
      this.results,});

  @override
  String toString() {
    return 'SearchUserResultModel{total: $total, totalPages: $totalPages, results: $results}';
  }

  SearchUserResultModel.fromJson(dynamic json) {
    total = json['total'];
    totalPages = json['total_pages'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(Results.fromJson(v));
      });
    }
  }
  int? total;
  int? totalPages;
  List<Results>? results;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total'] = total;
    map['total_pages'] = totalPages;
    if (results != null) {
      map['results'] = results?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Results {
  Results({
      this.id, 
      this.username, 
      this.name, 
      this.firstName, 
      this.lastName, 
      this.instagramUsername, 
      this.twitterUsername, 
      this.portfolioUrl, 
      this.totalLikes, 
      this.totalPhotos, 
      this.totalCollections, 
      this.profileImage, 
      this.links,});

  @override
  String toString() {
    return 'Results{id: $id, username: $username, name: $name, firstName: $firstName, lastName: $lastName, instagramUsername: $instagramUsername, twitterUsername: $twitterUsername, portfolioUrl: $portfolioUrl, totalLikes: $totalLikes, totalPhotos: $totalPhotos, totalCollections: $totalCollections, profileImage: $profileImage, links: $links}';
  }

  Results.fromJson(dynamic json) {
    id = json['id'];
    username = json['username'];
    name = json['name'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    instagramUsername = json['instagram_username'];
    twitterUsername = json['twitter_username'];
    portfolioUrl = json['portfolio_url'];
    totalLikes = json['total_likes'];
    totalPhotos = json['total_photos'];
    totalCollections = json['total_collections'];
    profileImage = json['profile_image'] != null ? ProfileImage.fromJson(json['profile_image']) : null;
    links = json['links'] != null ? LinksUser.fromJson(json['links']) : null;
  }
  String? id;
  String? username;
  String? name;
  String? firstName;
  String? lastName;
  String? instagramUsername;
  String? twitterUsername;
  dynamic portfolioUrl;
  int? totalLikes;
  int? totalPhotos;
  int? totalCollections;
  ProfileImage? profileImage;
  LinksUser? links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['username'] = username;
    map['name'] = name;
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['instagram_username'] = instagramUsername;
    map['twitter_username'] = twitterUsername;
    map['portfolio_url'] = portfolioUrl;
    map['total_likes'] = totalLikes;
    map['total_photos'] = totalPhotos;
    map['total_collections'] = totalCollections;
    if (profileImage != null) {
      map['profile_image'] = profileImage?.toJson();
    }
    if (links != null) {
      map['links'] = links?.toJson();
    }
    return map;
  }

}

class LinksUser {
  LinksUser({
      this.self, 
      this.html, 
      this.photos, 
      this.likes,});

  @override
  String toString() {
    return 'LinksUser{self: $self, html: $html, photos: $photos, likes: $likes}';
  }

  LinksUser.fromJson(dynamic json) {
    self = json['self'];
    html = json['html'];
    photos = json['photos'];
    likes = json['likes'];
  }
  String? self;
  String? html;
  String? photos;
  String? likes;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['self'] = self;
    map['html'] = html;
    map['photos'] = photos;
    map['likes'] = likes;
    return map;
  }

}
