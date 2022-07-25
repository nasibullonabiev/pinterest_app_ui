class UserSStatistics {
  UserSStatistics({
    this.username,
    this.downloads,
    this.views,
  });

  @override
  String toString() {
    return 'UserSStatistics{username: $username, downloads: $downloads, views: $views}';
  }

  UserSStatistics.fromJson(dynamic json) {
    username = json['username'];
    downloads = json['downloads'] != null
        ? Downloads.fromJson(json['downloads'])
        : null;
    views = json['views'] != null ? Views.fromJson(json['views']) : null;
  }

  String? username;
  Downloads? downloads;
  Views? views;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['username'] = username;
    if (downloads != null) {
      map['downloads'] = downloads?.toJson();
    }
    if (views != null) {
      map['views'] = views?.toJson();
    }
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

class Historical {
  Historical({
    this.change,
    this.average,
    this.resolution,
    this.quantity,
    this.values,
  });

  @override
  String toString() {
    return 'Historical{change: $change, average: $average, resolution: $resolution, quantity: $quantity, values: $values}';
  }

  Historical.fromJson(dynamic json) {
    change = json['change'];
    average = json['average'];
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
  int? average;
  String? resolution;
  int? quantity;
  List<Values>? values;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['change'] = change;
    map['average'] = average;
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
