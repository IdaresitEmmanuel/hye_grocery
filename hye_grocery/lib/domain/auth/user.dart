import 'dart:convert';
import 'package:hye_grocery/domain/core/value_objects.dart';

class MyUser {
  UniqueId id;
  MyUser({
    required this.id,
  });

  MyUser copyWith({
    UniqueId? id,
  }) {
    return MyUser(
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
    };
  }

  factory MyUser.fromMap(Map<String, dynamic> map) {
    return MyUser(
      id: map["id"] as UniqueId,
    );
  }

  String toJson() => json.encode(toMap());

  factory MyUser.fromJson(String source) => MyUser.fromMap(json.decode(source));

  @override
  String toString() => 'User(id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MyUser && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
