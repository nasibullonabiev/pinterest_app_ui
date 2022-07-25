import 'single_photo_model.dart';

class UserSCollectionsModel {
  UserSCollectionsModel({
      this.id, 
      this.title, 
      this.description, 
      this.publishedAt, 
      this.lastCollectedAt, 
      this.updatedAt, 
      this.totalPhotos, 
      this.private, 
      this.shareKey, 
      this.coverPhoto, 
      this.user, 
      this.links,
  });

  UserSCollectionsModel.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    publishedAt = json['published_at'];
    lastCollectedAt = json['last_collected_at'];
    updatedAt = json['updated_at'];
    totalPhotos = json['total_photos'];
    private = json['private'];
    shareKey = json['share_key'];
    coverPhoto = json['cover_photo'] != null ? CoverPhoto.fromJson(json['cover_photo']) : null;
    user = json['user'] != null ? UserCollections.fromJson(json['user']) : null;
    links = json['links'] != null ? LinksUserSCollections.fromJson(json['links']) : null;
  }
  int? id;
  String? title;
  String? description;
  String? publishedAt;
  String? lastCollectedAt;
  String? updatedAt;
  int? totalPhotos;
  bool? private;
  String? shareKey;
  CoverPhoto? coverPhoto;
  UserCollections? user;
  LinksUserSCollections? links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['description'] = description;
    map['published_at'] = publishedAt;
    map['last_collected_at'] = lastCollectedAt;
    map['updated_at'] = updatedAt;
    map['total_photos'] = totalPhotos;
    map['private'] = private;
    map['share_key'] = shareKey;
    if (coverPhoto != null) {
      map['cover_photo'] = coverPhoto?.toJson();
    }
    if (user != null) {
      map['user'] = user?.toJson();
    }
    if (links != null) {
      map['links'] = links?.toJson();
    }
    return map;
  }

}

class LinksUserSCollections {
  LinksUserSCollections({
      this.self, 
      this.html, 
      this.photos, 
      this.related,});

  LinksUserSCollections.fromJson(dynamic json) {
    self = json['self'];
    html = json['html'];
    photos = json['photos'];
    related = json['related'];
  }
  String? self;
  String? html;
  String? photos;
  String? related;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['self'] = self;
    map['html'] = html;
    map['photos'] = photos;
    map['related'] = related;
    return map;
  }

}

class UserCollections {
  UserCollections({
      this.id, 
      this.updatedAt, 
      this.username, 
      this.name, 
      this.portfolioUrl, 
      this.bio, 
      this.location, 
      this.totalLikes, 
      this.totalPhotos, 
      this.totalCollections, 
      this.profileImage, 
      this.links,});

  UserCollections.fromJson(dynamic json) {
    id = json['id'];
    updatedAt = json['updated_at'];
    username = json['username'];
    name = json['name'];
    portfolioUrl = json['portfolio_url'];
    bio = json['bio'];
    location = json['location'];
    totalLikes = json['total_likes'];
    totalPhotos = json['total_photos'];
    totalCollections = json['total_collections'];
    profileImage = json['profile_image'] != null ? ProfileImage.fromJson(json['profile_image']) : null;
    links = json['links'] != null ? LinksUserSCollections.fromJson(json['links']) : null;
  }
  String? id;
  String? updatedAt;
  String? username;
  String? name;
  String? portfolioUrl;
  String? bio;
  String? location;
  int? totalLikes;
  int? totalPhotos;
  int? totalCollections;
  ProfileImage? profileImage;
  LinksUserSCollections? links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['updated_at'] = updatedAt;
    map['username'] = username;
    map['name'] = name;
    map['portfolio_url'] = portfolioUrl;
    map['bio'] = bio;
    map['location'] = location;
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

class CoverPhoto {
  CoverPhoto({
      this.id, 
      this.width, 
      this.height, 
      this.color, 
      this.blurHash, 
      this.likes, 
      this.likedByUser, 
      this.description, 
      this.user, 
      this.urls, 
      this.links,});

  CoverPhoto.fromJson(dynamic json) {
    id = json['id'];
    width = json['width'];
    height = json['height'];
    color = json['color'];
    blurHash = json['blur_hash'];
    likes = json['likes'];
    likedByUser = json['liked_by_user'];
    description = json['description'];
    user = json['user'] != null ? UserCollections.fromJson(json['user']) : null;
    urls = json['urls'] != null ? UrlsUserSCollections.fromJson(json['urls']) : null;
    links = json['links'] != null ? LinksUserSCollections.fromJson(json['links']) : null;
  }
  String? id;
  int? width;
  int? height;
  String? color;
  String? blurHash;
  int? likes;
  bool? likedByUser;
  String? description;
  UserCollections? user;
  UrlsUserSCollections? urls;
  LinksUserSCollections? links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
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
    if (urls != null) {
      map['urls'] = urls?.toJson();
    }
    if (links != null) {
      map['links'] = links?.toJson();
    }
    return map;
  }

}

class UrlsUserSCollections {
  UrlsUserSCollections({
      this.raw, 
      this.full, 
      this.regular, 
      this.small, 
      this.thumb,});

  UrlsUserSCollections.fromJson(dynamic json) {
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