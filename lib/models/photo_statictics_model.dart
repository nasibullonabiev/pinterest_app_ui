class PhotoStatistics {
  PhotoStatistics({
    this.id,
    this.downloads,
    this.views,
    this.likes,
  });

  @override
  String toString() {
    return 'PhotoStatistics{id: $id, downloads: $downloads, views: $views, likes: $likes}';
  }

  PhotoStatistics.fromJson(dynamic json) {
    id = json['id'];
    downloads = json['downloads'] != null
        ? Downloads.fromJson(json['downloads'])
        : null;
    views = json['views'] != null ? Views.fromJson(json['views']) : null;
    likes = json['likes'] != null ? Likes.fromJson(json['likes']) : null;
  }

  String? id;
  Downloads? downloads;
  Views? views;
  Likes? likes;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
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
    this.historical,
  });

  @override
  String toString() {
    return 'Likes{total: $total, historical: $historical}';
  }

  Likes.fromJson(dynamic json) {
    total = json['total'];
    historical = json['historical'] != null
        ? Historical.fromJson(json['historical'])
        : null;
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
}

class Historical {
  Historical({
    this.change,
    this.resolution,
    this.quantity,
    this.values,
  });

  @override
  String toString() {
    return 'Historical{change: $change, resolution: $resolution, quantity: $quantity, values: $values}';
  }

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
}

class Values {
  Values({
    this.date,
    this.value,
  });

  @override
  String toString() {
    return 'Values{date: $date, value: $value}';
  }

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
}

class Views {
  Views({
    this.total,
    this.historical,
  });

  @override
  String toString() {
    return 'Views{total: $total, historical: $historical}';
  }

  Views.fromJson(dynamic json) {
    total = json['total'];
    historical = json['historical'] != null
        ? Historical.fromJson(json['historical'])
        : null;
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
}

class Downloads {
  Downloads({
    this.total,
    this.historical,
  });

  @override
  String toString() {
    return 'Downloads{total: $total, historical: $historical}';
  }

  Downloads.fromJson(dynamic json) {
    total = json['total'];
    historical = json['historical'] != null
        ? Historical.fromJson(json['historical'])
        : null;
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
}
