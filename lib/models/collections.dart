import 'package:pinterest_app_ui/models/single_photo_model.dart';

class Collections {
  Collections({
      this.id, 
      this.title, 
      this.description, 
      this.publishedAt, 
      this.lastCollectedAt, 
      this.updatedAt, 
      this.curated, 
      this.featured, 
      this.totalPhotos, 
      this.private, 
      this.shareKey, 
      this.tags, 
      this.links, 
      this.user, 
      this.coverPhoto, 
      this.previewPhotos,});

  Collections.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    publishedAt = json['published_at'];
    lastCollectedAt = json['last_collected_at'];
    updatedAt = json['updated_at'];
    curated = json['curated'];
    featured = json['featured'];
    totalPhotos = json['total_photos'];
    private = json['private'];
    shareKey = json['share_key'];
    if (json['tags'] != null) {
      tags = [];
      json['tags'].forEach((v) {
        tags?.add(Tags.fromJson(v));
      });
    }
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    coverPhoto = json['cover_photo'] != null ? CoverPhoto.fromJson(json['cover_photo']) : null;
    if (json['preview_photos'] != null) {
      previewPhotos = [];
      json['preview_photos'].forEach((v) {
        previewPhotos?.add(PreviewPhotos.fromJson(v));
      });
    }
  }
  String? id;
  String? title;
  dynamic description;
  String? publishedAt;
  String? lastCollectedAt;
  String? updatedAt;
  bool? curated;
  bool? featured;
  int? totalPhotos;
  bool? private;
  String? shareKey;
  List<Tags>? tags;
  Links? links;
  User? user;
  CoverPhoto? coverPhoto;
  List<PreviewPhotos>? previewPhotos;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['description'] = description;
    map['published_at'] = publishedAt;
    map['last_collected_at'] = lastCollectedAt;
    map['updated_at'] = updatedAt;
    map['curated'] = curated;
    map['featured'] = featured;
    map['total_photos'] = totalPhotos;
    map['private'] = private;
    map['share_key'] = shareKey;
    if (tags != null) {
      map['tags'] = tags?.map((v) => v.toJson()).toList();
    }
    if (links != null) {
      map['links'] = links?.toJson();
    }
    if (user != null) {
      map['user'] = user?.toJson();
    }
    if (coverPhoto != null) {
      map['cover_photo'] = coverPhoto?.toJson();
    }
    if (previewPhotos != null) {
      map['preview_photos'] = previewPhotos?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class PreviewPhotos {
  PreviewPhotos({
      this.id, 
      this.createdAt, 
      this.updatedAt, 
      this.blurHash, 
      this.urls,});

  PreviewPhotos.fromJson(dynamic json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    blurHash = json['blur_hash'];
    urls = json['urls'] != null ? Urls.fromJson(json['urls']) : null;
  }
  String? id;
  String? createdAt;
  String? updatedAt;
  String? blurHash;
  Urls? urls;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['blur_hash'] = blurHash;
    if (urls != null) {
      map['urls'] = urls?.toJson();
    }
    return map;
  }

}

class CoverPhoto {
  CoverPhoto({
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

  CoverPhoto.fromJson(dynamic json) {
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
      //   categories?.add(CurrentUserCollections.fromJson(v));
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
    sponsorship = json['sponsorship'];
    topicSubmissions = json['topic_submissions'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  String? id;
  String? createdAt;
  String? updatedAt;
  dynamic promotedAt;
  int? width;
  int? height;
  String? color;
  String? blurHash;
  String? description;
  String? altDescription;
  Urls? urls;
  Links? links;
  List<dynamic>? categories;
  int? likes;
  bool? likedByUser;
  List<dynamic>? currentUserCollections;
  dynamic sponsorship;
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
    map['sponsorship'] = sponsorship;
    map['topic_submissions'] = topicSubmissions;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    return map;
  }

}

class Tags {
  Tags({
      this.type, 
      this.title, 
      this.source,});

  Tags.fromJson(dynamic json) {
    type = json['type'];
    title = json['title'];
    source = json['source'] != null ? Source.fromJson(json['source']) : null;
  }
  String? type;
  String? title;
  Source? source;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['title'] = title;
    if (source != null) {
      map['source'] = source?.toJson();
    }
    return map;
  }

}

class Source {
  Source({
      this.ancestry,
      this.title,
      this.subtitle,
      this.description,
      this.metaTitle,
      this.metaDescription,
      this.coverPhoto,});

  Source.fromJson(dynamic json) {
    ancestry = json['ancestry'] != null ? Ancestry.fromJson(json['ancestry']) : null;
    title = json['title'];
    subtitle = json['subtitle'];
    description = json['description'];
    metaTitle = json['meta_title'];
    metaDescription = json['meta_description'];
    coverPhoto = json['cover_photo'] != null ? CoverPhoto.fromJson(json['cover_photo']) : null;
  }
  Ancestry? ancestry;
  String? title;
  String? subtitle;
  String? description;
  String? metaTitle;
  String? metaDescription;
  CoverPhoto? coverPhoto;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (ancestry != null) {
      map['ancestry'] = ancestry?.toJson();
    }
    map['title'] = title;
    map['subtitle'] = subtitle;
    map['description'] = description;
    map['meta_title'] = metaTitle;
    map['meta_description'] = metaDescription;
    if (coverPhoto != null) {
      map['cover_photo'] = coverPhoto?.toJson();
    }
    return map;
  }

}

class TopicSubmissions {
  TopicSubmissions({
      this.wallpapers, 
      this.experimental, 
      this.spirituality,});

  TopicSubmissions.fromJson(dynamic json) {
    wallpapers = json['wallpapers'] != null ? Wallpapers.fromJson(json['wallpapers']) : null;
    experimental = json['experimental'] != null ? Experimental.fromJson(json['experimental']) : null;
    spirituality = json['spirituality'] != null ? Spirituality.fromJson(json['spirituality']) : null;
  }
  Wallpapers? wallpapers;
  Experimental? experimental;
  Spirituality? spirituality;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (wallpapers != null) {
      map['wallpapers'] = wallpapers?.toJson();
    }
    if (experimental != null) {
      map['experimental'] = experimental?.toJson();
    }
    if (spirituality != null) {
      map['spirituality'] = spirituality?.toJson();
    }
    return map;
  }

}

class Spirituality {
  Spirituality({
      this.status, 
      this.approvedOn,});

  Spirituality.fromJson(dynamic json) {
    status = json['status'];
    approvedOn = json['approved_on'];
  }
  String? status;
  String? approvedOn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['approved_on'] = approvedOn;
    return map;
  }

}

class Experimental {
  Experimental({
      this.status, 
      this.approvedOn,});

  Experimental.fromJson(dynamic json) {
    status = json['status'];
    approvedOn = json['approved_on'];
  }
  String? status;
  String? approvedOn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['approved_on'] = approvedOn;
    return map;
  }

}

class Wallpapers {
  Wallpapers({
      this.status, 
      this.approvedOn,});

  Wallpapers.fromJson(dynamic json) {
    status = json['status'];
    approvedOn = json['approved_on'];
  }
  String? status;
  String? approvedOn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['approved_on'] = approvedOn;
    return map;
  }

}

class Ancestry {
  Ancestry({
      this.type, 
      this.category, 
      this.subcategory,});

  Ancestry.fromJson(dynamic json) {
    type = json['type'] != null ? Type.fromJson(json['type']) : null;
    category = json['category'] != null ? Category.fromJson(json['category']) : null;
    subcategory = json['subcategory'] != null ? Subcategory.fromJson(json['subcategory']) : null;
  }
  Type? type;
  Category? category;
  Subcategory? subcategory;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (type != null) {
      map['type'] = type?.toJson();
    }
    if (category != null) {
      map['category'] = category?.toJson();
    }
    if (subcategory != null) {
      map['subcategory'] = subcategory?.toJson();
    }
    return map;
  }

}

class Subcategory {
  Subcategory({
      this.slug, 
      this.prettySlug,});

  Subcategory.fromJson(dynamic json) {
    slug = json['slug'];
    prettySlug = json['pretty_slug'];
  }
  String? slug;
  String? prettySlug;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['slug'] = slug;
    map['pretty_slug'] = prettySlug;
    return map;
  }

}

class Category {
  Category({
      this.slug, 
      this.prettySlug,});

  Category.fromJson(dynamic json) {
    slug = json['slug'];
    prettySlug = json['pretty_slug'];
  }
  String? slug;
  String? prettySlug;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['slug'] = slug;
    map['pretty_slug'] = prettySlug;
    return map;
  }

}

class Type {
  Type({
      this.slug, 
      this.prettySlug,});

  Type.fromJson(dynamic json) {
    slug = json['slug'];
    prettySlug = json['pretty_slug'];
  }
  String? slug;
  String? prettySlug;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['slug'] = slug;
    map['pretty_slug'] = prettySlug;
    return map;
  }

}