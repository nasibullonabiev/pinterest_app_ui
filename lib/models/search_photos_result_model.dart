import 'single_photo_model.dart';

class SearchResultModel {
  SearchResultModel({
    this.total,
    this.totalPages,
    this.results,
  });

  @override
  String toString() {
    return 'SearchResultModel{total: $total, totalPages: $totalPages, results: $results}';
  }

  SearchResultModel.fromJson(dynamic json) {
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
    this.user,
    this.tags,
  });

  @override
  String toString() {
    return 'SearchResultModel{id: $id, createdAt: $createdAt, updatedAt: $updatedAt, promotedAt: $promotedAt, width: $width, height: $height, color: $color, blurHash: $blurHash, description: $description, altDescription: $altDescription, urls: $urls, links: $links, categories: $categories, likes: $likes, likedByUser: $likedByUser, currentUserCollections: $currentUserCollections, sponsorship: $sponsorship, topicSubmissions: $topicSubmissions, user: $user, tags: $tags}';
  }

  Results.fromJson(dynamic json) {
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
      // });todo
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
    topicSubmissions = json['topic_submissions'] != null
        ? TopicSubmissions.fromJson(json['topic_submissions'])
        : null;
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    if (json['tags'] != null) {
      tags = [];
      json['tags'].forEach((v) {
        tags?.add(Tags.fromJson(v));
      });
    }
  }

  String? id;
  String? createdAt;
  String? updatedAt;
  String? promotedAt;
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
  TopicSubmissions? topicSubmissions;
  User? user;
  List<Tags>? tags;

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
      map['current_user_collections'] =
          currentUserCollections?.map((v) => v.toJson()).toList();
    }
    map['sponsorship'] = sponsorship;
    if (topicSubmissions != null) {
      map['topic_submissions'] = topicSubmissions?.toJson();
    }
    if (user != null) {
      map['user'] = user?.toJson();
    }
    if (tags != null) {
      map['tags'] = tags?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Tags {
  Tags({
    this.type,
    this.title,
  });

  @override
  String toString() {
    return 'Tags{type: $type, title: $title}';
  }

  Tags.fromJson(dynamic json) {
    type = json['type'];
    title = json['title'];
  }

  String? type;
  String? title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['title'] = title;
    return map;
  }
}

class TopicSubmissions {
  TopicSubmissions({
    this.businesswork,
  });

  @override
  String toString() {
    return 'TopicSubmissions{businesswork: $businesswork}';
  }

  TopicSubmissions.fromJson(dynamic json) {
    businesswork = json['business-work'] != null
        ? BusinessWork.fromJson(json['business-work'])
        : null;
  }

  BusinessWork? businesswork;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (businesswork != null) {
      map['business-work'] = businesswork?.toJson();
    }
    return map;
  }
}

class BusinessWork {
  BusinessWork({
    this.status,
    this.approvedOn,
  });

  @override
  String toString() {
    return 'BusinessWork{status: $status, approvedOn: $approvedOn}';
  }

  BusinessWork.fromJson(dynamic json) {
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
