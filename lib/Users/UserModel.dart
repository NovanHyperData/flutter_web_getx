class User {
  int? userId;
  String? userName;
  String? userGender;
  String? userPhoto;
  String? userEmail;
  String? userPassword;
  String? userAddress;
  String? userBirth;
  String? userPhone;
  String? userStatus;
  String? userRole;
  Null? createdAt;
  Null? updatedAt;

  User(
      {this.userId,
      this.userName,
      this.userGender,
      this.userPhoto,
      this.userEmail,
      this.userPassword,
      this.userAddress,
      this.userBirth,
      this.userPhone,
      this.userStatus,
      this.userRole,
      this.createdAt,
      this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    userName = json['user_name'];
    userGender = json['user_gender'];
    userPhoto = json['user_photo'];
    userEmail = json['user_email'];
    userPassword = json['user_password'];
    userAddress = json['user_address'];
    userBirth = json['user_birth'];
    userPhone = json['user_phone'];
    userStatus = json['user_status'];
    userRole = json['user_role'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['user_name'] = this.userName;
    data['user_gender'] = this.userGender;
    data['user_photo'] = this.userPhoto;
    data['user_email'] = this.userEmail;
    data['user_password'] = this.userPassword;
    data['user_address'] = this.userAddress;
    data['user_birth'] = this.userBirth;
    data['user_phone'] = this.userPhone;
    data['user_status'] = this.userStatus;
    data['user_role'] = this.userRole;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}