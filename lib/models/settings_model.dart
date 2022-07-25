class SettingsModel {
  String? imageQuality;
  int? t;

  SettingsModel({
    this.imageQuality,
    this.t,
});

  SettingsModel.fromJson(Map<String, dynamic> json) {
    imageQuality = json['imageQuality'];
    t = json['t'];
  }

  Map<String, dynamic> toJson() => {
    'imageQuality': imageQuality,
    't': t,
  };

  @override
  String toString() {
    return toJson().toString();
  }
}