import 'dart:convert';

import 'package:hye_grocery/domain/auth/value_field_objects.dart';
import 'package:hye_grocery/domain/core/value_objects.dart';

class MyUser {
  UniqueId id;
  String displayName;
  EmailAddress emailAddress;
  String? phoneNo;
  String? photoUrl;
  MyUser({
    required this.id,
    required this.displayName,
    required this.emailAddress,
    this.phoneNo,
    this.photoUrl,
  });

  MyUser copyWith({
    UniqueId? id,
    String? displayName,
    EmailAddress? emailAddress,
    String? phoneNo,
    String? photoUrl,
  }) {
    return MyUser(
      id: id ?? this.id,
      displayName: displayName ?? this.displayName,
      emailAddress: emailAddress ?? this.emailAddress,
      phoneNo: phoneNo ?? this.phoneNo,
      photoUrl: photoUrl ?? this.photoUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': UniqueId.fromUniqueString(id as String),
      'displayName': displayName,
      'emailAddress': EmailAddress(emailAddress as String),
      'phoneNo': phoneNo,
      'photoUrl': photoUrl,
    };
  }

  factory MyUser.fromMap(Map<String, dynamic> map) {
    return MyUser(
      id: UniqueId.fromUniqueString(map['id']),
      displayName: map['displayName'] ?? '',
      emailAddress: EmailAddress(map['emailAddress']),
      phoneNo: map['phoneNo'],
      photoUrl: map['photoUrl'],
    );
  }

  String toJson() => json.encode(toMap());

  factory MyUser.fromJson(String source) => MyUser.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MyUser(id: $id, displayName: $displayName, emailAddress: $emailAddress, phoneNo: $phoneNo, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MyUser &&
        other.id == id &&
        other.displayName == displayName &&
        other.emailAddress == emailAddress &&
        other.phoneNo == phoneNo &&
        other.photoUrl == photoUrl;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        displayName.hashCode ^
        emailAddress.hashCode ^
        phoneNo.hashCode ^
        photoUrl.hashCode;
  }
}
