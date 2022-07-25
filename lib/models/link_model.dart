class LinkModel {
  LinkModel({
    this.url,
  });

  LinkModel.fromJson(dynamic json) {
    url = json['url'];
  }

  String? url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    return map;
  }

  @override
  String toString() {
    return 'DownloadPhotoModel{url: $url}';
  }
}
