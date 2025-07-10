class UsersMosle {
  int? Uid;
  String? Username;
  String? Password;
  String? Email;
  bool? isLogin;
  UsersMosle.fromJson(Map json) {
    Uid = json['Uid'];
    Username = json['Username'];
    Email = json['Email'];
    Password = json['Password'];
    isLogin = json['isLogin'];
  } 
  Map toJson() {
    final data = {};
    data["Uid"] = Uid;
    data["Username"] = Username;
    data["Password"] = Password;
    data["Email"] = Email;
    data["isLogin"] = isLogin;
    return data;
  }
}
