import 'single_photo_model.dart';

class UserSPhotosModel {
  UserSPhotosModel({
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
      this.statistics, 
      this.user, 
      this.currentUserCollections, 
      this.urls, 
      this.links,});

  @override
  String toString() {
    return 'UserSPhotosModel{id: $id, createdAt: $createdAt, updatedAt: $updatedAt, width: $width, height: $height, color: $color, blurHash: $blurHash, likes: $likes, likedByUser: $likedByUser, description: $description, statistics: $statistics, user: $user, currentUserCollections: $currentUserCollections, urls: $urls, links: $links}';
  }

  UserSPhotosModel.fromJson(dynamic json) {
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
    statistics = json['statistics'] != null ? Statistics.fromJson(json['statistics']) : null;
    user = json['user'] != null ? UserUserS.fromJson(json['user']) : null;
    if (json['current_user_collections'] != null) {
      currentUserCollections = [];
      json['current_user_collections'].forEach((v) {
        currentUserCollections?.add(CurrentUserCollections.fromJson(v));
      });
    }
    urls = json['urls'] != null ? UrlsUserS.fromJson(json['urls']) : null;
    links = json['links'] != null ? LinksUserS.fromJson(json['links']) : null;
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
  Statistics? statistics;
  UserUserS? user;
  List<CurrentUserCollections>? currentUserCollections;
  UrlsUserS? urls;
  LinksUserS? links;

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
    if (statistics != null) {
      map['statistics'] = statistics?.toJson();
    }
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

class LinksUserS {
  LinksUserS({
      this.self, 
      this.html, 
      this.download, 
      this.downloadLocation,});

  @override
  String toString() {
    return 'LinksUserS{self: $self, html: $html, download: $download, downloadLocation: $downloadLocation}';
  }

  LinksUserS.fromJson(dynamic json) {
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

class UrlsUserS {
  UrlsUserS({
      this.raw, 
      this.full, 
      this.regular, 
      this.small, 
      this.thumb,});

  @override
  String toString() {
    return 'UrlsUserS{raw: $raw, full: $full, regular: $regular, small: $small, thumb: $thumb}';
  }

  UrlsUserS.fromJson(dynamic json) {
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

class UserUserS {
  UserUserS({
      this.id, 
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

  @override
  String toString() {
    return 'UserUserS{id: $id, username: $username, name: $name, portfolioUrl: $portfolioUrl, bio: $bio, location: $location, totalLikes: $totalLikes, totalPhotos: $totalPhotos, totalCollections: $totalCollections, profileImage: $profileImage, links: $links}';
  }

  UserUserS.fromJson(dynamic json) {
    id = json['id'];
    username = json['username'];
    name = json['name'];
    portfolioUrl = json['portfolio_url'];
    bio = json['bio'];
    location = json['location'];
    totalLikes = json['total_likes'];
    totalPhotos = json['total_photos'];
    totalCollections = json['total_collections'];
    profileImage = json['profile_image'] != null ? ProfileImage.fromJson(json['profile_image']) : null;
    links = json['links'] != null ? LinksUserS.fromJson(json['links']) : null;
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
  ProfileImage? profileImage;
  LinksUserS? links;

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
    if (profileImage != null) {
      map['profile_image'] = profileImage?.toJson();
    }
    if (links != null) {
      map['links'] = links?.toJson();
    }
    return map;
  }

}

class ProfileImage {
  ProfileImage({
      this.small, 
      this.medium, 
      this.large,});

  @override
  String toString() {
    return 'ProfileImage{small: $small, medium: $medium, large: $large}';
  }

  ProfileImage.fromJson(dynamic json) {
    small = json['small'];
    medium = json['medium'];
    large = json['large'];
  }
  String? small;
  String? medium;
  String? large;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['small'] = small;
    map['medium'] = medium;
    map['large'] = large;
    return map;
  }

}

class Statistics {
  Statistics({
      this.downloads, 
      this.views, 
      this.likes,});

  @override
  String toString() {
    return 'Statistics{downloads: $downloads, views: $views, likes: $likes}';
  }

  Statistics.fromJson(dynamic json) {
    downloads = json['downloads'] != null ? Downloads.fromJson(json['downloads']) : null;
    views = json['views'] != null ? Views.fromJson(json['views']) : null;
    likes = json['likes'] != null ? Likes.fromJson(json['likes']) : null;
  }
  Downloads? downloads;
  Views? views;
  Likes? likes;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (downloads != null) {
      map['downloads'] = downloads?.toJson();
    }
    if (views != null) {
      map['views'] = views?.toJson();
    }
    if (likes != null) {
      map['likes'] = likes?.toJson();
    }
    return map;
  }

}

class Likes {
  Likes({
      this.total, 
      this.historical,});

  Likes.fromJson(dynamic json) {
    total = json['total'];
    historical = json['historical'] != null ? Historical.fromJson(json['historical']) : null;
  }
  int? total;
  Historical? historical;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total'] = total;
    if (historical != null) {
      map['historical'] = historical?.toJson();
    }
    return map;
  }

  @override
  String toString() {
    return 'Likes{total: $total, historical: $historical}';
  }
}

class Historical {
  Historical({
      this.change, 
      this.resolution, 
      this.quantity, 
      this.values,});

  Historical.fromJson(dynamic json) {
    change = json['change'];
    resolution = json['resolution'];
    quantity = json['quantity'];
    if (json['values'] != null) {
      values = [];
      json['values'].forEach((v) {
        values?.add(Values.fromJson(v));
      });
    }
  }
  int? change;
  String? resolution;
  int? quantity;
  List<Values>? values;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['change'] = change;
    map['resolution'] = resolution;
    map['quantity'] = quantity;
    if (values != null) {
      map['values'] = values?.map((v) => v.toJson()).toList();
    }
    return map;
  }

  @override
  String toString() {
    return 'Historical{change: $change, resolution: $resolution, quantity: $quantity, values: $values}';
  }
}

class Values {

  Values({
      this.date, 
      this.value,});

  Values.fromJson(dynamic json) {
    date = json['date'];
    value = json['value'];
  }
  String? date;
  int? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['value'] = value;
    return map;
  }

  @override
  String toString() {
    return 'Values{date: $date, value: $value}';
  }
}

class Views {
  Views({
      this.total, 
      this.historical,});

  Views.fromJson(dynamic json) {
    total = json['total'];
    historical = json['historical'] != null ? Historical.fromJson(json['historical']) : null;
  }
  int? total;
  Historical? historical;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total'] = total;
    if (historical != null) {
      map['historical'] = historical?.toJson();
    }
    return map;
  }

  @override
  String toString() {
    return 'Views{total: $total, historical: $historical}';
  }
}

class Downloads {
  Downloads({
      this.total, 
      this.historical,});

  Downloads.fromJson(dynamic json) {
    total = json['total'];
    historical = json['historical'] != null ? Historical.fromJson(json['historical']) : null;
  }
  int? total;
  Historical? historical;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total'] = total;
    if (historical != null) {
      map['historical'] = historical?.toJson();
    }
    return map;
  }

  @override
  String toString() {
    return 'Downloads{total: $total, historical: $historical}';
  }
}