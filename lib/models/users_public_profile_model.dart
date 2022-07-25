import 'single_photo_model.dart';

class UsersPublicProfileModel {
  UsersPublicProfileModel({
    this.id,
    this.updatedAt,
    this.username,
    this.name,
    this.firstName,
    this.lastName,
    this.instagramUsername,
    this.twitterUsername,
    this.portfolioUrl,
    this.bio,
    this.location,
    this.totalLikes,
    this.totalPhotos,
    this.totalCollections,
    this.followedByUser,
    this.followersCount,
    this.followingCount,
    this.downloads,
    this.social,
    this.profileImage,
    this.badge,
    this.links,
  });

  @override
  String toString() {
    return 'GetUsersPublicProfileModel{id: $id, updatedAt: $updatedAt, username: $username, name: $name, firstName: $firstName, lastName: $lastName, instagramUsername: $instagramUsername, twitterUsername: $twitterUsername, portfolioUrl: $portfolioUrl, bio: $bio, location: $location, totalLikes: $totalLikes, totalPhotos: $totalPhotos, totalCollections: $totalCollections, followedByUser: $followedByUser, followersCount: $followersCount, followingCount: $followingCount, downloads: $downloads, social: $social, profileImage: $profileImage, badge: $badge, links: $links}';
  }

  UsersPublicProfileModel.fromJson(dynamic json) {
    id = json['id'];
    updatedAt = json['updated_at'];
    username = json['username'];
    name = json['name'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    instagramUsername = json['instagram_username'];
    twitterUsername = json['twitter_username'];
    portfolioUrl = json['portfolio_url'];
    bio = json['bio'];
    location = json['location'];
    totalLikes = json['total_likes'];
    totalPhotos = json['total_photos'];
    totalCollections = json['total_collections'];
    followedByUser = json['followed_by_user'];
    followersCount = json['followers_count'];
    followingCount = json['following_count'];
    downloads = json['downloads'];
    social = json['social'] != null ? SocialUserProfile.fromJson(json['social']) : null;
    profileImage = json['profile_image'] != null
        ? ProfileImage.fromJson(json['profile_image'])
        : null;
    badge = json['badge'] != null ? Badge.fromJson(json['badge']) : null;
    links = json['links'] != null ? LinksUserProfile.fromJson(json['links']) : null;
  }

  String? id;
  String? updatedAt;
  String? username;
  String? name;
  String? firstName;
  String? lastName;
  String? instagramUsername;
  String? twitterUsername;
  dynamic portfolioUrl;
  String? bio;
  String? location;
  int? totalLikes;
  int? totalPhotos;
  int? totalCollections;
  bool? followedByUser;
  int? followersCount;
  int? followingCount;
  int? downloads;
  SocialUserProfile? social;
  ProfileImage? profileImage;
  Badge? badge;
  LinksUserProfile? links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['updated_at'] = updatedAt;
    map['username'] = username;
    map['name'] = name;
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['instagram_username'] = instagramUsername;
    map['twitter_username'] = twitterUsername;
    map['portfolio_url'] = portfolioUrl;
    map['bio'] = bio;
    map['location'] = location;
    map['total_likes'] = totalLikes;
    map['total_photos'] = totalPhotos;
    map['total_collections'] = totalCollections;
    map['followed_by_user'] = followedByUser;
    map['followers_count'] = followersCount;
    map['following_count'] = followingCount;
    map['downloads'] = downloads;
    if (social != null) {
      map['social'] = social?.toJson();
    }
    if (profileImage != null) {
      map['profile_image'] = profileImage?.toJson();
    }
    if (badge != null) {
      map['badge'] = badge?.toJson();
    }
    if (links != null) {
      map['links'] = links?.toJson();
    }
    return map;
  }
}

class LinksUserProfile {
  LinksUserProfile({
    this.self,
    this.html,
    this.photos,
    this.likes,
    this.portfolio,
  });

  @override
  String toString() {
    return 'LinksUserProfile{self: $self, html: $html, photos: $photos, likes: $likes, portfolio: $portfolio}';
  }

  LinksUserProfile.fromJson(dynamic json) {
    self = json['self'];
    html = json['html'];
    photos = json['photos'];
    likes = json['likes'];
    portfolio = json['portfolio'];
  }

  String? self;
  String? html;
  String? photos;
  String? likes;
  String? portfolio;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['self'] = self;
    map['html'] = html;
    map['photos'] = photos;
    map['likes'] = likes;
    map['portfolio'] = portfolio;
    return map;
  }
}

class Badge {
  Badge({
    this.title,
    this.primary,
    this.slug,
    this.link,
  });

  @override
  String toString() {
    return 'Badge{title: $title, primary: $primary, slug: $slug, link: $link}';
  }

  Badge.fromJson(dynamic json) {
    title = json['title'];
    primary = json['primary'];
    slug = json['slug'];
    link = json['link'];
  }

  String? title;
  bool? primary;
  String? slug;
  String? link;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['primary'] = primary;
    map['slug'] = slug;
    map['link'] = link;
    return map;
  }
}

class SocialUserProfile {
  SocialUserProfile({
    this.instagramUsername,
    this.portfolioUrl,
    this.twitterUsername,
  });

  @override
  String toString() {
    return 'SocialUserProfile{instagramUsername: $instagramUsername, portfolioUrl: $portfolioUrl, twitterUsername: $twitterUsername}';
  }

  SocialUserProfile.fromJson(dynamic json) {
    instagramUsername = json['instagram_username'];
    portfolioUrl = json['portfolio_url'];
    twitterUsername = json['twitter_username'];
  }

  String? instagramUsername;
  String? portfolioUrl;
  String? twitterUsername;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['instagram_username'] = instagramUsername;
    map['portfolio_url'] = portfolioUrl;
    map['twitter_username'] = twitterUsername;
    return map;
  }
}
