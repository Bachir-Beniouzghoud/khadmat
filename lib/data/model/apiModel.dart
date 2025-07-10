class Apimodel {
  dynamic status;
  String? Massegs;
  Map<String, dynamic>? data;
  Apimodel.fromJson(Map json) {
    status = json['status'];
    Massegs = json['Massegs'];
    data = json['data'];
  }
  Map toJson() {
    final data = {};
    data["status"] = status;
    data["Massegs"] = Massegs;
    data["data"] = data;
    return data;
  }
}
