import 'dart:convert';
/// status : true
/// message : "Berhasil login."
/// data : {"token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZjRmOTI0ZjlhNzg2MGIxY2I1ODZkOTM1NWIxZDM1MDIyMzNlNGRmMzFkY2EzZDVmNTlmNjczNTBiOGNhM2QxNDZiZmI2ZDkwODA2YWNjNjAiLCJpYXQiOjE2NjY3NTY0ODYuOTc1MTk4LCJuYmYiOjE2NjY3NTY0ODYuOTc1MjA0LCJleHAiOjE2OTgyOTI0ODYuOTcxMjMsInN1YiI6IjIiLCJzY29wZXMiOltdfQ.pYIzC4Vn3dJQhEivS6g0ISszdRZSu3Xm30Kv3dF7P2RyetO2xVZ8TnR_nDmYm8iwrMJpxwW8k1hhLrWzqaKluNGSHc6qeeU44HtBmlWnrs7Z4DPcfe8OA9fChn39Em0M7mODR42YI2Smdp6wbPAH0efi-Xs4-nHWnPhlLsHVHttuBTfrscOaXrX-EyrTuMSu_NeYZAUg2qsqOUAkCncloJLU--g8v3SsIu50mfOeBYxXZYuyvVt1R37UgxmLXfaswkkj8R0knIW7W_GV_r8tDUvEu6clbSEEIksOxp8mZqkdjriZtq8wUA5ZfhKxIG41H2nwZ4yliEtRSRSf1DuM5BTgikcDtbGFBgs5yL0J6CJg0HJ5ZOw8bwdDtxO3Sqqw7Dh9nJGiEvQVPXlAUm5iIk88N7a_ZFIFMiGtrtqQhLQ_68VDZtIOOITTZtlOfOVX6DYS1EITjykSOsehVwZlT0VHTgHEXitCB18aUacHZhpOZz9HlyqJo6fbJpgJMlySRo4XnHJ3CRUfHqhKQN3cn4jZ3FXLdzasTjZSTzyD3T0nIyhmMGqgdUIVKDPa6Gnfo_1bE2EezGkmlPO_hWXUX3nC3e6BFnNAe1AY2lKZ4XlFHaHee3J9FLzVF3GEaP29rjlz_Guk1eh2SHtF4D3b8nkahLclOjnDp7ANwv3ef08","user":{"id":2,"name":"Ikhsan Heriyawan","email":"ikhsan@gmail.com","email_verified_at":null,"image":"img/default.jpg","role":"1","created_at":"2022-10-25T14:45:16.000000Z","updated_at":"2022-10-25T14:45:16.000000Z","deleted_at":null,"tokens":[{"id":"ebb69466379509510f22270ea9b53c4ff4bc7212224fd51b83eea08f43ebc8f68d55c2829a417742","user_id":2,"client_id":1,"name":"token","scopes":[],"revoked":false,"created_at":"2022-10-26 03:54:44","updated_at":"2022-10-26 03:54:44","expires_at":"2023-10-26T03:54:44.000000Z"}]}}

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));
String loginModelToJson(LoginModel data) => json.encode(data.toJson());
class LoginModel {
  LoginModel({
    bool? status,
    String? message,
    Data? data,}){
    _status = status;
    _message = message;
    _data = data;
  }

  LoginModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
  LoginModel copyWith({  bool? status,
    String? message,
    Data? data,
  }) => LoginModel(  status: status ?? _status,
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

/// token : "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZjRmOTI0ZjlhNzg2MGIxY2I1ODZkOTM1NWIxZDM1MDIyMzNlNGRmMzFkY2EzZDVmNTlmNjczNTBiOGNhM2QxNDZiZmI2ZDkwODA2YWNjNjAiLCJpYXQiOjE2NjY3NTY0ODYuOTc1MTk4LCJuYmYiOjE2NjY3NTY0ODYuOTc1MjA0LCJleHAiOjE2OTgyOTI0ODYuOTcxMjMsInN1YiI6IjIiLCJzY29wZXMiOltdfQ.pYIzC4Vn3dJQhEivS6g0ISszdRZSu3Xm30Kv3dF7P2RyetO2xVZ8TnR_nDmYm8iwrMJpxwW8k1hhLrWzqaKluNGSHc6qeeU44HtBmlWnrs7Z4DPcfe8OA9fChn39Em0M7mODR42YI2Smdp6wbPAH0efi-Xs4-nHWnPhlLsHVHttuBTfrscOaXrX-EyrTuMSu_NeYZAUg2qsqOUAkCncloJLU--g8v3SsIu50mfOeBYxXZYuyvVt1R37UgxmLXfaswkkj8R0knIW7W_GV_r8tDUvEu6clbSEEIksOxp8mZqkdjriZtq8wUA5ZfhKxIG41H2nwZ4yliEtRSRSf1DuM5BTgikcDtbGFBgs5yL0J6CJg0HJ5ZOw8bwdDtxO3Sqqw7Dh9nJGiEvQVPXlAUm5iIk88N7a_ZFIFMiGtrtqQhLQ_68VDZtIOOITTZtlOfOVX6DYS1EITjykSOsehVwZlT0VHTgHEXitCB18aUacHZhpOZz9HlyqJo6fbJpgJMlySRo4XnHJ3CRUfHqhKQN3cn4jZ3FXLdzasTjZSTzyD3T0nIyhmMGqgdUIVKDPa6Gnfo_1bE2EezGkmlPO_hWXUX3nC3e6BFnNAe1AY2lKZ4XlFHaHee3J9FLzVF3GEaP29rjlz_Guk1eh2SHtF4D3b8nkahLclOjnDp7ANwv3ef08"
/// user : {"id":2,"name":"Ikhsan Heriyawan","email":"ikhsan@gmail.com","email_verified_at":null,"image":"img/default.jpg","role":"1","created_at":"2022-10-25T14:45:16.000000Z","updated_at":"2022-10-25T14:45:16.000000Z","deleted_at":null,"tokens":[{"id":"ebb69466379509510f22270ea9b53c4ff4bc7212224fd51b83eea08f43ebc8f68d55c2829a417742","user_id":2,"client_id":1,"name":"token","scopes":[],"revoked":false,"created_at":"2022-10-26 03:54:44","updated_at":"2022-10-26 03:54:44","expires_at":"2023-10-26T03:54:44.000000Z"}]}

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
    String? token,
    User? user,}){
    _token = token;
    _user = user;
  }

  Data.fromJson(dynamic json) {
    _token = json['token'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  String? _token;
  User? _user;
  Data copyWith({  String? token,
    User? user,
  }) => Data(  token: token ?? _token,
    user: user ?? _user,
  );
  String? get token => _token;
  User? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = _token;
    if (_user != null) {
      map['user'] = _user?.toJson();
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
/// tokens : [{"id":"ebb69466379509510f22270ea9b53c4ff4bc7212224fd51b83eea08f43ebc8f68d55c2829a417742","user_id":2,"client_id":1,"name":"token","scopes":[],"revoked":false,"created_at":"2022-10-26 03:54:44","updated_at":"2022-10-26 03:54:44","expires_at":"2023-10-26T03:54:44.000000Z"}]

User userFromJson(String str) => User.fromJson(json.decode(str));
String userToJson(User data) => json.encode(data.toJson());
class User {
  User({
    int? id,
    String? name,
    String? email,
    dynamic emailVerifiedAt,
    String? image,
    String? role,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
    List<Tokens>? tokens,}){
    _id = id;
    _name = name;
    _email = email;
    _emailVerifiedAt = emailVerifiedAt;
    _image = image;
    _role = role;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _tokens = tokens;
  }

  User.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _email = json['email'];
    _emailVerifiedAt = json['email_verified_at'];
    _image = json['image'];
    _role = json['role'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _deletedAt = json['deleted_at'];
    if (json['tokens'] != null) {
      _tokens = [];
      json['tokens'].forEach((v) {
        _tokens?.add(Tokens.fromJson(v));
      });
    }
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
  List<Tokens>? _tokens;
  User copyWith({  int? id,
    String? name,
    String? email,
    dynamic emailVerifiedAt,
    String? image,
    String? role,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
    List<Tokens>? tokens,
  }) => User(  id: id ?? _id,
    name: name ?? _name,
    email: email ?? _email,
    emailVerifiedAt: emailVerifiedAt ?? _emailVerifiedAt,
    image: image ?? _image,
    role: role ?? _role,
    createdAt: createdAt ?? _createdAt,
    updatedAt: updatedAt ?? _updatedAt,
    deletedAt: deletedAt ?? _deletedAt,
    tokens: tokens ?? _tokens,
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
  List<Tokens>? get tokens => _tokens;

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
    if (_tokens != null) {
      map['tokens'] = _tokens?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : "ebb69466379509510f22270ea9b53c4ff4bc7212224fd51b83eea08f43ebc8f68d55c2829a417742"
/// user_id : 2
/// client_id : 1
/// name : "token"
/// scopes : []
/// revoked : false
/// created_at : "2022-10-26 03:54:44"
/// updated_at : "2022-10-26 03:54:44"
/// expires_at : "2023-10-26T03:54:44.000000Z"

Tokens tokensFromJson(String str) => Tokens.fromJson(json.decode(str));
String tokensToJson(Tokens data) => json.encode(data.toJson());
class Tokens {
  Tokens({
    String? id,
    int? userId,
    int? clientId,
    String? name,
    List<dynamic>? scopes,
    bool? revoked,
    String? createdAt,
    String? updatedAt,
    String? expiresAt,}){
    _id = id;
    _userId = userId;
    _clientId = clientId;
    _name = name;
    _scopes = scopes;
    _revoked = revoked;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _expiresAt = expiresAt;
  }

  Tokens.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _clientId = json['client_id'];
    _name = json['name'];
    _revoked = json['revoked'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _expiresAt = json['expires_at'];
  }
  String? _id;
  int? _userId;
  int? _clientId;
  String? _name;
  List<dynamic>? _scopes;
  bool? _revoked;
  String? _createdAt;
  String? _updatedAt;
  String? _expiresAt;
  Tokens copyWith({  String? id,
    int? userId,
    int? clientId,
    String? name,
    List<dynamic>? scopes,
    bool? revoked,
    String? createdAt,
    String? updatedAt,
    String? expiresAt,
  }) => Tokens(  id: id ?? _id,
    userId: userId ?? _userId,
    clientId: clientId ?? _clientId,
    name: name ?? _name,
    scopes: scopes ?? _scopes,
    revoked: revoked ?? _revoked,
    createdAt: createdAt ?? _createdAt,
    updatedAt: updatedAt ?? _updatedAt,
    expiresAt: expiresAt ?? _expiresAt,
  );
  String? get id => _id;
  int? get userId => _userId;
  int? get clientId => _clientId;
  String? get name => _name;
  List<dynamic>? get scopes => _scopes;
  bool? get revoked => _revoked;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get expiresAt => _expiresAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['client_id'] = _clientId;
    map['name'] = _name;
    if (_scopes != null) {
      map['scopes'] = _scopes?.map((v) => v.toJson()).toList();
    }
    map['revoked'] = _revoked;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['expires_at'] = _expiresAt;
    return map;
  }

}