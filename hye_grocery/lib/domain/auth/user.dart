import 'dart:convert';

import 'package:hye_grocery/domain/auth/value_field_objects.dart';
import 'package:hye_grocery/domain/core/value_objects.dart';

class MyUser {
  UniqueId id;
  UserName userName;
  EmailAddress emailAddress;
  PhoneNumber? phoneNo;
  String? photoUrl;
  MyUser({
    required this.id,
    required this.userName,
    required this.emailAddress,
    this.phoneNo,
    this.photoUrl,
  });

  MyUser copyWith({
    UniqueId? id,
    UserName? userName,
    EmailAddress? emailAddress,
    PhoneNumber? phoneNo,
    String? photoUrl,
  }) {
    return MyUser(
      id: id ?? this.id,
      userName: userName ?? this.userName,
      emailAddress: emailAddress ?? this.emailAddress,
      phoneNo: phoneNo ?? this.phoneNo,
      photoUrl: photoUrl ?? this.photoUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id.value.getOrElse(() => ""),
      'userName': userName.getOrCrash(),
      'emailAddress': emailAddress.getOrCrash(),
      'phoneNo': phoneNo!.value.getOrElse(() => ""),
      'photoUrl': photoUrl,
    };
  }

  factory MyUser.fromMap(Map<String, dynamic> map) {
    return MyUser(
      id: UniqueId.fromUniqueString(map['id']),
      userName: UserName(map['userName']),
      emailAddress: EmailAddress(map['emailAddress']),
      phoneNo: PhoneNumber(map['phoneNo']),
      photoUrl: map['photoUrl'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory MyUser.fromJson(String source) => MyUser.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MyUser(id: $id, displayName: $userName, emailAddress: $emailAddress, phoneNo: $phoneNo, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MyUser &&
        other.id == id &&
        other.userName == userName &&
        other.emailAddress == emailAddress &&
        other.phoneNo == phoneNo &&
        other.photoUrl == photoUrl;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        userName.hashCode ^
        emailAddress.hashCode ^
        phoneNo.hashCode ^
        photoUrl.hashCode;
  }
}
