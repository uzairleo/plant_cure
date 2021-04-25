class RegisterBody {
  String email;
  String username;
  String phoneNumber;
  String password;
  String password2;
  String firebaseUuid;

  RegisterBody({
    this.email,
    this.username,
    this.phoneNumber,
    this.password,
    this.password2,
    this.firebaseUuid,
  });

  RegisterBody.fromJson(Map<String, dynamic> json) {
    this.email = json['email'];
    this.username = json['user_name'];
    this.phoneNumber = json['phone_number'];
    this.password = json['password'];
    this.password2 = json['password2'];
    this.password2 = json['is_doctor'];
    this.firebaseUuid = json['firebase_uuid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = new Map<String, dynamic>();
    json['email'] = this.email;
    json['user_name'] = this.username;
    json['phone_number'] = this.phoneNumber;
    json['password'] = this.password;
    json['password2'] = this.password2;
    json['firebase_uuid'] = this.firebaseUuid;
    return json;
  }
}
