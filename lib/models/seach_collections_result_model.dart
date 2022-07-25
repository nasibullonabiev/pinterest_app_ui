import 'single_photo_model.dart';

class SearchCollectionsResultModel {
  SearchCollectionsResultModel({
      this.total, 
      this.totalPages, 
      this.results,});

  SearchCollectionsResultModel.fromJson(Map json) {
    total = json['total'];
    totalPages = json['total_pages'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(Results.fromJson(v));
      });
    }
  }

  @override
  String toString() {
    return 'SearchCollectionsResultModel{total: $total, totalPages: $totalPages, results: $results}';
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
      this.title, 
      this.description, 
      this.publishedAt, 
      this.lastCollectedAt, 
      this.updatedAt, 
      this.featured, 
      this.totalPhotos, 
      this.private, 
      this.shareKey, 
      this.coverPhoto, 
      this.user, 
      this.links,});

  @override
  String toString() {
    return 'Results{id: $id, title: $title, description: $description, publishedAt: $publishedAt, lastCollectedAt: $lastCollectedAt, updatedAt: $updatedAt, featured: $featured, totalPhotos: $totalPhotos, private: $private, shareKey: $shareKey, coverPhoto: $coverPhoto, user: $user, links: $links}';
  }

  Results.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    publishedAt = json['published_at'];
    lastCollectedAt = json['last_collected_at'];
    updatedAt = json['updated_at'];
    featured = json['featured'];
    totalPhotos = json['total_photos'];
    private = json['private'];
    shareKey = json['share_key'];
    coverPhoto = json['cover_photo'] != null ? CoverPhoto.fromJson(json['cover_photo']) : null;
    user = json['user'] != null ? UserCollections.fromJson(json['user']) : null;
    links = json['links'] != null ? LinksCollections.fromJson(json['links']) : null;
  }
  String? id;
  String? title;
  dynamic description;
  String? publishedAt;
  String? lastCollectedAt;
  String? updatedAt;
  bool? featured;
  int? totalPhotos;
  bool? private;
  String? shareKey;
  CoverPhoto? coverPhoto;
  UserCollections? user;
  LinksCollections? links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['description'] = description;
    map['published_at'] = publishedAt;
    map['last_collected_at'] = lastCollectedAt;
    map['updated_at'] = updatedAt;
    map['featured'] = featured;
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

class LinksCollections {
  LinksCollections({
      this.self, 
      this.html, 
      this.photos, 
      this.related,});

  @override
  String toString() {
    return '_Links{self: $self, html: $html, photos: $photos, related: $related}';
  }

  LinksCollections.fromJson(dynamic json) {
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
      this.username, 
      this.name, 
      this.portfolioUrl, 
      this.bio, 
      this.profileImage, 
      this.links,});

  @override
  String toString() {
    return 'UserCollections{id: $id, username: $username, name: $name, portfolioUrl: $portfolioUrl, bio: $bio, profileImage: $profileImage, links: $links}';
  }

  UserCollections.fromJson(dynamic json) {
    id = json['id'];
    username = json['username'];
    name = json['name'];
    portfolioUrl = json['portfolio_url'];
    bio = json['bio'];
    profileImage = json['profile_image'] != null ? ProfileImage.fromJson(json['profile_image']) : null;
    links = json['links'] != null ? LinksCollections.fromJson(json['links']) : null;
  }
  String? id;
  String? username;
  String? name;
  dynamic portfolioUrl;
  String? bio;
  ProfileImage? profileImage;
  LinksCollections? links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['username'] = username;
    map['name'] = name;
    map['portfolio_url'] = portfolioUrl;
    map['bio'] = bio;
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
      this.createdAt, 
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

  @override
  String toString() {
    return 'CoverPhoto{id: $id, createdAt: $createdAt, width: $width, height: $height, color: $color, blurHash: $blurHash, likes: $likes, likedByUser: $likedByUser, description: $description, user: $user, urls: $urls, links: $links}';
  }

  CoverPhoto.fromJson(dynamic json) {
    id = json['id'];
    createdAt = json['created_at'];
    width = json['width'];
    height = json['height'];
    color = json['color'];
    blurHash = json['blur_hash'];
    likes = json['likes'];
    likedByUser = json['liked_by_user'];
    description = json['description'];
    user = json['user'] != null ? UserCollections.fromJson(json['user']) : null;
    urls = json['urls'] != null ? UrlsCollections.fromJson(json['urls']) : null;
    links = json['links'] != null ? LinksCollections.fromJson(json['links']) : null;
  }
  String? id;
  String? createdAt;
  int? width;
  int? height;
  String? color;
  String? blurHash;
  int? likes;
  bool? likedByUser;
  String? description;
  UserCollections? user;
  UrlsCollections? urls;
  LinksCollections? links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['created_at'] = createdAt;
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

class UrlsCollections {
  UrlsCollections({
      this.raw, 
      this.full, 
      this.regular, 
      this.small, 
      this.thumb,});

  UrlsCollections.fromJson(dynamic json) {
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

  @override
  String toString() {
    return 'UrlsCollections{raw: $raw, full: $full, regular: $regular, small: $small, thumb: $thumb}';
  }
}
