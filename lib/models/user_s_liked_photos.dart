import 'single_photo_model.dart';

class UserSLikedPhotos {
  UserSLikedPhotos({
      this.id, 
      this.createdAt, 
      this.updatedAt, 
      this.width, 
      this.height, 
      this.color, 
      this.blurHash, 
      this.likes, 
      this.likedByUser, 
      this.description, 
      this.user, 
      this.currentUserCollections, 
      this.urls, 
      this.links,});

  UserSLikedPhotos.fromJson(dynamic json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    width = json['width'];
    height = json['height'];
    color = json['color'];
    blurHash = json['blur_hash'];
    likes = json['likes'];
    likedByUser = json['liked_by_user'];
    description = json['description'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    if (json['current_user_collections'] != null) {
      currentUserCollections = [];
      json['current_user_collections'].forEach((v) {
        currentUserCollections?.add(CurrentUserCollections.fromJson(v));
      });
    }
    urls = json['urls'] != null ? UrlsUserSLiked.fromJson(json['urls']) : null;
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  String? id;
  String? createdAt;
  String? updatedAt;
  int? width;
  int? height;
  String? color;
  String? blurHash;
  int? likes;
  bool? likedByUser;
  String? description;
  User? user;
  List<CurrentUserCollections>? currentUserCollections;
  UrlsUserSLiked? urls;
  Links? links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['width'] = width;
    map['height'] = height;
    map['color'] = color;
    map['blur_hash'] = blurHash;
    map['likes'] = likes;
    map['liked_by_user'] = likedByUser;
    map['description'] = description;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    if (currentUserCollections != null) {
      map['current_user_collections'] = currentUserCollections?.map((v) => v.toJson()).toList();
    }
    if (urls != null) {
      map['urls'] = urls?.toJson();
    }
    if (links != null) {
      map['links'] = links?.toJson();
    }
    return map;
  }

}

class Links {
  Links({
      this.self, 
      this.html, 
      this.download, 
      this.downloadLocation,});

  Links.fromJson(dynamic json) {
    self = json['self'];
    html = json['html'];
    download = json['download'];
    downloadLocation = json['download_location'];
  }
  String? self;
  String? html;
  String? download;
  String? downloadLocation;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['self'] = self;
    map['html'] = html;
    map['download'] = download;
    map['download_location'] = downloadLocation;
    return map;
  }

}

class UrlsUserSLiked {
  UrlsUserSLiked({
      this.raw, 
      this.full, 
      this.regular, 
      this.small, 
      this.thumb,});

  UrlsUserSLiked.fromJson(dynamic json) {
    raw = json['raw'];
    full = json['full'];
    regular = json['regular'];
    small = json['small'];
    thumb = json['thumb'];
  }
  String? raw;
  String? full;
  String? regular;
  String? small;
  String? thumb;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['raw'] = raw;
    map['full'] = full;
    map['regular'] = regular;
    map['small'] = small;
    map['thumb'] = thumb;
    return map;
  }

}

class User {
  User({
      this.id, 
      this.username, 
      this.name, 
      this.portfolioUrl, 
      this.bio, 
      this.location, 
      this.totalLikes, 
      this.totalPhotos, 
      this.totalCollections, 
      this.instagramUsername, 
      this.twitterUsername, 
      this.profileImage, 
      this.links,});

  User.fromJson(dynamic json) {
    id = json['id'];
    username = json['username'];
    name = json['name'];
    portfolioUrl = json['portfolio_url'];
    bio = json['bio'];
    location = json['location'];
    totalLikes = json['total_likes'];
    totalPhotos = json['total_photos'];
    totalCollections = json['total_collections'];
    instagramUsername = json['instagram_username'];
    twitterUsername = json['twitter_username'];
    profileImage = json['profile_image'] != null ? ProfileImage.fromJson(json['profile_image']) : null;
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  String? id;
  String? username;
  String? name;
  String? portfolioUrl;
  String? bio;
  String? location;
  int? totalLikes;
  int? totalPhotos;
  int? totalCollections;
  String? instagramUsername;
  String? twitterUsername;
  ProfileImage? profileImage;
  Links? links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['username'] = username;
    map['name'] = name;
    map['portfolio_url'] = portfolioUrl;
    map['bio'] = bio;
    map['location'] = location;
    map['total_likes'] = totalLikes;
    map['total_photos'] = totalPhotos;
    map['total_collections'] = totalCollections;
    map['instagram_username'] = instagramUsername;
    map['twitter_username'] = twitterUsername;
    if (profileImage != null) {
      map['profile_image'] = profileImage?.toJson();
    }
    if (links != null) {
      map['links'] = links?.toJson();
    }
    return map;
  }

}