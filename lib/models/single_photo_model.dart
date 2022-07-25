class SinglePhotoModel {
  SinglePhotoModel({
      this.id, 
      this.createdAt, 
      this.updatedAt, 
      this.promotedAt, 
      this.width, 
      this.height, 
      this.color, 
      this.blurHash, 
      this.description, 
      this.altDescription, 
      this.urls, 
      this.links, 
      this.categories, 
      this.likes, 
      this.likedByUser, 
      this.currentUserCollections, 
      this.sponsorship, 
      this.topicSubmissions, 
      this.user,});

  SinglePhotoModel.fromJson(dynamic json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    promotedAt = json['promoted_at'];
    width = json['width'];
    height = json['height'];
    color = json['color'];
    blurHash = json['blur_hash'];
    description = json['description'];
    altDescription = json['alt_description'];
    urls = json['urls'] != null ? Urls.fromJson(json['urls']) : null;
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
    if (json['categories'] != null) {
      categories = [];
      // json['categories'].forEach((v) {
      //   categories?.add(Dynamic.fromJson(v));
      // });
    }
    likes = json['likes'];
    likedByUser = json['liked_by_user'];
    if (json['current_user_collections'] != null) {
      currentUserCollections = [];
      json['current_user_collections'].forEach((v) {
        currentUserCollections?.add(CurrentUserCollections.fromJson(v));
      });
    }
    sponsorship = json['sponsorship'] != null ? Sponsorship.fromJson(json['sponsorship']) : null;
    topicSubmissions = json['topic_submissions'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  @override
  String toString() {
    return 'SinglePhotoModel{id: $id, createdAt: $createdAt, updatedAt: $updatedAt, promotedAt: $promotedAt, width: $width, height: $height, color: $color, blurHash: $blurHash, description: $description, altDescription: $altDescription, urls: $urls, links: $links, categories: $categories, likes: $likes, likedByUser: $likedByUser, currentUserCollections: $currentUserCollections, sponsorship: $sponsorship, topicSubmissions: $topicSubmissions, user: $user}';
  }

  String? id;
  String? createdAt;
  String? updatedAt;
  dynamic promotedAt;
  int? width;
  int? height;
  String? color;
  String? blurHash;
  dynamic description;
  dynamic altDescription;
  Urls? urls;
  Links? links;
  List<dynamic>? categories;
  int? likes;
  bool? likedByUser;
  List<CurrentUserCollections>? currentUserCollections;
  Sponsorship? sponsorship;
  dynamic topicSubmissions;
  User? user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['promoted_at'] = promotedAt;
    map['width'] = width;
    map['height'] = height;
    map['color'] = color;
    map['blur_hash'] = blurHash;
    map['description'] = description;
    map['alt_description'] = altDescription;
    if (urls != null) {
      map['urls'] = urls?.toJson();
    }
    if (links != null) {
      map['links'] = links?.toJson();
    }
    if (categories != null) {
      map['categories'] = categories?.map((v) => v.toJson()).toList();
    }
    map['likes'] = likes;
    map['liked_by_user'] = likedByUser;
    if (currentUserCollections != null) {
      map['current_user_collections'] = currentUserCollections?.map((v) => v.toJson()).toList();
    }
    if (sponsorship != null) {
      map['sponsorship'] = sponsorship?.toJson();
    }
    map['topic_submissions'] = topicSubmissions;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    return map;
  }

}

class User {
  User({
      this.id, 
      this.updatedAt, 
      this.username, 
      this.name, 
      this.firstName, 
      this.lastName, 
      this.twitterUsername, 
      this.portfolioUrl, 
      this.bio, 
      this.location, 
      this.links, 
      this.profileImage, 
      this.instagramUsername, 
      this.totalCollections, 
      this.totalLikes, 
      this.totalPhotos, 
      this.acceptedTos, 
      this.forHire, 
      this.social,});

  @override
  String toString() {
    return 'User{id: $id, updatedAt: $updatedAt, username: $username, name: $name, firstName: $firstName, lastName: $lastName, twitterUsername: $twitterUsername, portfolioUrl: $portfolioUrl, bio: $bio, location: $location, links: $links, profileImage: $profileImage, instagramUsername: $instagramUsername, totalCollections: $totalCollections, totalLikes: $totalLikes, totalPhotos: $totalPhotos, acceptedTos: $acceptedTos, forHire: $forHire, social: $social}';
  }

  User.fromJson(dynamic json) {
    id = json['id'];
    updatedAt = json['updated_at'];
    username = json['username'];
    name = json['name'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    twitterUsername = json['twitter_username'];
    portfolioUrl = json['portfolio_url'];
    bio = json['bio'];
    location = json['location'];
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
    profileImage = json['profile_image'] != null ? ProfileImage.fromJson(json['profile_image']) : null;
    instagramUsername = json['instagram_username'];
    totalCollections = json['total_collections'];
    totalLikes = json['total_likes'];
    totalPhotos = json['total_photos'];
    acceptedTos = json['accepted_tos'];
    forHire = json['for_hire'];
    social = json['social'] != null ? Social.fromJson(json['social']) : null;
  }
  String? id;
  String? updatedAt;
  String? username;
  String? name;
  String? firstName;
  dynamic lastName;
  dynamic twitterUsername;
  String? portfolioUrl;
  String? bio;
  dynamic location;
  Links? links;
  ProfileImage? profileImage;
  String? instagramUsername;
  int? totalCollections;
  int? totalLikes;
  int? totalPhotos;
  bool? acceptedTos;
  bool? forHire;
  Social? social;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['updated_at'] = updatedAt;
    map['username'] = username;
    map['name'] = name;
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['twitter_username'] = twitterUsername;
    map['portfolio_url'] = portfolioUrl;
    map['bio'] = bio;
    map['location'] = location;
    if (links != null) {
      map['links'] = links?.toJson();
    }
    if (profileImage != null) {
      map['profile_image'] = profileImage?.toJson();
    }
    map['instagram_username'] = instagramUsername;
    map['total_collections'] = totalCollections;
    map['total_likes'] = totalLikes;
    map['total_photos'] = totalPhotos;
    map['accepted_tos'] = acceptedTos;
    map['for_hire'] = forHire;
    if (social != null) {
      map['social'] = social?.toJson();
    }
    return map;
  }

}

class CurrentUserCollections {

  CurrentUserCollections({
    this.id,
    this.title,
    this.publishedAt,
    this.lastCollectedAt,
    this.updatedAt,
    this.coverPhoto,
    this.user,});

  CurrentUserCollections.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    publishedAt = json['published_at'];
    lastCollectedAt = json['last_collected_at'];
    updatedAt = json['updated_at'];
    coverPhoto = json['cover_photo'];
    user = json['user'];
  }
  int? id;
  String? title;
  String? publishedAt;
  String? lastCollectedAt;
  String? updatedAt;
  dynamic coverPhoto;
  dynamic user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['published_at'] = publishedAt;
    map['last_collected_at'] = lastCollectedAt;
    map['updated_at'] = updatedAt;
    map['cover_photo'] = coverPhoto;
    map['user'] = user;
    return map;
  }

  @override
  String toString() {
    return 'CurrentUserCollections{id: $id, title: $title, publishedAt: $publishedAt, lastCollectedAt: $lastCollectedAt, updatedAt: $updatedAt, coverPhoto: $coverPhoto, user: $user}';
  }
}

class Social {
  Social({
      this.instagramUsername, 
      this.portfolioUrl, 
      this.twitterUsername, 
      this.paypalEmail,});

  @override
  String toString() {
    return 'Social{instagramUsername: $instagramUsername, portfolioUrl: $portfolioUrl, twitterUsername: $twitterUsername, paypalEmail: $paypalEmail}';
  }

  Social.fromJson(dynamic json) {
    instagramUsername = json['instagram_username'];
    portfolioUrl = json['portfolio_url'];
    twitterUsername = json['twitter_username'];
    paypalEmail = json['paypal_email'];
  }
  String? instagramUsername;
  String? portfolioUrl;
  dynamic twitterUsername;
  dynamic paypalEmail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['instagram_username'] = instagramUsername;
    map['portfolio_url'] = portfolioUrl;
    map['twitter_username'] = twitterUsername;
    map['paypal_email'] = paypalEmail;
    return map;
  }

}

class ProfileImage {

  ProfileImage({
      this.small, 
      this.medium, 
      this.large,});

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

  @override
  String toString() {
    return 'ProfileImage{small: $small, medium: $medium, large: $large}';
  }
}

class Links {
  Links({
      this.self, 
      this.html, 
      this.photos, 
      this.likes, 
      this.portfolio, 
      this.following, 
      this.followers,});

  @override
  String toString() {
    return 'Links{self: $self, html: $html, photos: $photos, likes: $likes, portfolio: $portfolio, following: $following, followers: $followers}';
  }

  Links.fromJson(dynamic json) {
    self = json['self'];
    html = json['html'];
    photos = json['photos'];
    likes = json['likes'];
    portfolio = json['portfolio'];
    following = json['following'];
    followers = json['followers'];
  }
  String? self;
  String? html;
  String? photos;
  String? likes;
  String? portfolio;
  String? following;
  String? followers;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['self'] = self;
    map['html'] = html;
    map['photos'] = photos;
    map['likes'] = likes;
    map['portfolio'] = portfolio;
    map['following'] = following;
    map['followers'] = followers;
    return map;
  }

}

class Sponsorship {

  Sponsorship({
      this.impressionUrls, 
      this.tagline, 
      this.taglineUrl, 
      this.sponsor,});

  Sponsorship.fromJson(dynamic json) {
    impressionUrls = json['impression_urls'] != null ? json['impression_urls'].cast<String>() : [];
    tagline = json['tagline'];
    taglineUrl = json['tagline_url'];
    sponsor = json['sponsor'] != null ? Sponsor.fromJson(json['sponsor']) : null;
  }
  List<String>? impressionUrls;
  String? tagline;
  String? taglineUrl;
  Sponsor? sponsor;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['impression_urls'] = impressionUrls;
    map['tagline'] = tagline;
    map['tagline_url'] = taglineUrl;
    if (sponsor != null) {
      map['sponsor'] = sponsor?.toJson();
    }
    return map;
  }

  @override
  String toString() {
    return 'Sponsorship{impressionUrls: $impressionUrls, tagline: $tagline, taglineUrl: $taglineUrl, sponsor: $sponsor}';
  }
}

class Sponsor {

  Sponsor({
      this.id,
      this.updatedAt,
      this.username,
      this.name,
      this.firstName,
      this.lastName,
      this.twitterUsername,
      this.portfolioUrl,
      this.bio,
      this.location,
      this.links,
      this.profileImage,
      this.instagramUsername,
      this.totalCollections,
      this.totalLikes,
      this.totalPhotos,
      this.acceptedTos,
      this.forHire,
      this.social,});

  @override
  String toString() {
    return 'Sponsor{id: $id, updatedAt: $updatedAt, username: $username, name: $name, firstName: $firstName, lastName: $lastName, twitterUsername: $twitterUsername, portfolioUrl: $portfolioUrl, bio: $bio, location: $location, links: $links, profileImage: $profileImage, instagramUsername: $instagramUsername, totalCollections: $totalCollections, totalLikes: $totalLikes, totalPhotos: $totalPhotos, acceptedTos: $acceptedTos, forHire: $forHire, social: $social}';
  }

  Sponsor.fromJson(dynamic json) {
    id = json['id'];
    updatedAt = json['updated_at'];
    username = json['username'];
    name = json['name'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    twitterUsername = json['twitter_username'];
    portfolioUrl = json['portfolio_url'];
    bio = json['bio'];
    location = json['location'];
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
    profileImage = json['profile_image'] != null ? ProfileImage.fromJson(json['profile_image']) : null;
    instagramUsername = json['instagram_username'];
    totalCollections = json['total_collections'];
    totalLikes = json['total_likes'];
    totalPhotos = json['total_photos'];
    acceptedTos = json['accepted_tos'];
    forHire = json['for_hire'];
    social = json['social'] != null ? Social.fromJson(json['social']) : null;
  }
  String? id;
  String? updatedAt;
  String? username;
  String? name;
  String? firstName;
  dynamic lastName;
  dynamic twitterUsername;
  String? portfolioUrl;
  String? bio;
  dynamic location;
  Links? links;
  ProfileImage? profileImage;
  String? instagramUsername;
  int? totalCollections;
  int? totalLikes;
  int? totalPhotos;
  bool? acceptedTos;
  bool? forHire;
  Social? social;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['updated_at'] = updatedAt;
    map['username'] = username;
    map['name'] = name;
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['twitter_username'] = twitterUsername;
    map['portfolio_url'] = portfolioUrl;
    map['bio'] = bio;
    map['location'] = location;
    if (links != null) {
      map['links'] = links?.toJson();
    }
    if (profileImage != null) {
      map['profile_image'] = profileImage?.toJson();
    }
    map['instagram_username'] = instagramUsername;
    map['total_collections'] = totalCollections;
    map['total_likes'] = totalLikes;
    map['total_photos'] = totalPhotos;
    map['accepted_tos'] = acceptedTos;
    map['for_hire'] = forHire;
    if (social != null) {
      map['social'] = social?.toJson();
    }
    return map;
  }

}

class Urls {
  Urls({
      this.raw, 
      this.full, 
      this.regular, 
      this.small, 
      this.thumb, 
      this.smallS3,});

  @override
  String toString() {
    return 'Urls{raw: $raw, full: $full, regular: $regular, small: $small, thumb: $thumb, smallS3: $smallS3}';
  }

  Urls.fromJson(dynamic json) {
    raw = json['raw'];
    full = json['full'];
    regular = json['regular'];
    small = json['small'];
    thumb = json['thumb'];
    smallS3 = json['small_s3'];
  }
  String? raw;
  String? full;
  String? regular;
  String? small;
  String? thumb;
  String? smallS3;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['raw'] = raw;
    map['full'] = full;
    map['regular'] = regular;
    map['small'] = small;
    map['thumb'] = thumb;
    map['small_s3'] = smallS3;
    return map;
  }

}