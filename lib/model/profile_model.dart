import 'dart:convert';
/// status : true
/// message : "Users"
/// data : {"id":2,"name":"Ikhsan Heriyawan","email":"ikhsan@gmail.com","email_verified_at":null,"image":"img/default.jpg","role":"1","created_at":"2022-10-25T14:45:16.000000Z","updated_at":"2022-10-25T14:45:16.000000Z","deleted_at":null,"user_detail":{"id":2,"phone_number":"08212837232","security_question":"fdsafsd","image":"default.jpg","created_at":"2022-10-25T14:45:16.000000Z","updated_at":"2022-10-25T14:45:16.000000Z"}}

ProfileModel profileModelFromJson(String str) => ProfileModel.fromJson(json.decode(str));
String profileModelToJson(ProfileModel data) => json.encode(data.toJson());
class ProfileModel {
  ProfileModel({
    bool? status,
    String? message,
    Data? data,}){
    _status = status;
    _message = message;
    _data = data;
  }

  ProfileModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
  ProfileModel copyWith({  bool? status,
    String? message,
    Data? data,
  }) => ProfileModel(  status: status ?? _status,
    message: message ?? _message,
    data: data ?? _data,
  );
  bool? get status => _status;
  String? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// id : 2
/// name : "Ikhsan Heriyawan"
/// email : "ikhsan@gmail.com"
/// email_verified_at : null
/// image : "img/default.jpg"
/// role : "1"
/// created_at : "2022-10-25T14:45:16.000000Z"
/// updated_at : "2022-10-25T14:45:16.000000Z"
/// deleted_at : null
/// user_detail : {"id":2,"phone_number":"08212837232","security_question":"fdsafsd","image":"default.jpg","created_at":"2022-10-25T14:45:16.000000Z","updated_at":"2022-10-25T14:45:16.000000Z"}

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
    int? id,
    String? name,
    String? email,
    dynamic emailVerifiedAt,
    String? image,
    String? role,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
    UserDetail? userDetail,}){
    _id = id;
    _name = name;
    _email = email;
    _emailVerifiedAt = emailVerifiedAt;
    _image = image;
    _role = role;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _userDetail = userDetail;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _email = json['email'];
    _emailVerifiedAt = json['email_verified_at'];
    _image = json['image'];
    _role = json['role'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _deletedAt = json['deleted_at'];
    _userDetail = json['user_detail'] != null ? UserDetail.fromJson(json['user_detail']) : null;
  }
  int? _id;
  String? _name;
  String? _email;
  dynamic _emailVerifiedAt;
  String? _image;
  String? _role;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  UserDetail? _userDetail;
  Data copyWith({  int? id,
    String? name,
    String? email,
    dynamic emailVerifiedAt,
    String? image,
    String? role,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
    UserDetail? userDetail,
  }) => Data(  id: id ?? _id,
    name: name ?? _name,
    email: email ?? _email,
    emailVerifiedAt: emailVerifiedAt ?? _emailVerifiedAt,
    image: image ?? _image,
    role: role ?? _role,
    createdAt: createdAt ?? _createdAt,
    updatedAt: updatedAt ?? _updatedAt,
    deletedAt: deletedAt ?? _deletedAt,
    userDetail: userDetail ?? _userDetail,
  );
  int? get id => _id;
  String? get name => _name;
  String? get email => _email;
  dynamic get emailVerifiedAt => _emailVerifiedAt;
  String? get image => _image;
  String? get role => _role;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;
  UserDetail? get userDetail => _userDetail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['email'] = _email;
    map['email_verified_at'] = _emailVerifiedAt;
    map['image'] = _image;
    map['role'] = _role;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['deleted_at'] = _deletedAt;
    if (_userDetail != null) {
      map['user_detail'] = _userDetail?.toJson();
    }
    return map;
  }

}

/// id : 2
/// phone_number : "08212837232"
/// security_question : "fdsafsd"
/// image : "default.jpg"
/// created_at : "2022-10-25T14:45:16.000000Z"
/// updated_at : "2022-10-25T14:45:16.000000Z"

UserDetail userDetailFromJson(String str) => UserDetail.fromJson(json.decode(str));
String userDetailToJson(UserDetail data) => json.encode(data.toJson());
class UserDetail {
  UserDetail({
    int? id,
    String? phoneNumber,
    String? securityQuestion,
    String? image,
    String? createdAt,
    String? updatedAt,}){
    _id = id;
    _phoneNumber = phoneNumber;
    _securityQuestion = securityQuestion;
    _image = image;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  UserDetail.fromJson(dynamic json) {
    _id = json['id'];
    _phoneNumber = json['phone_number'];
    _securityQuestion = json['security_question'];
    _image = json['image'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  String? _phoneNumber;
  String? _securityQuestion;
  String? _image;
  String? _createdAt;
  String? _updatedAt;
  UserDetail copyWith({  int? id,
    String? phoneNumber,
    String? securityQuestion,
    String? image,
    String? createdAt,
    String? updatedAt,
  }) => UserDetail(  id: id ?? _id,
    phoneNumber: phoneNumber ?? _phoneNumber,
    securityQuestion: securityQuestion ?? _securityQuestion,
    image: image ?? _image,
    createdAt: createdAt ?? _createdAt,
    updatedAt: updatedAt ?? _updatedAt,
  );
  int? get id => _id;
  String? get phoneNumber => _phoneNumber;
  String? get securityQuestion => _securityQuestion;
  String? get image => _image;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['phone_number'] = _phoneNumber;
    map['security_question'] = _securityQuestion;
    map['image'] = _image;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}