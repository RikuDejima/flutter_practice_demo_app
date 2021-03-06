import 'package:key/entity/store.dart';
import 'package:key/logic/repository/base_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    String? name,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  // DocumentReference get ref =>
  //     FirebaseFirestore.instance.collection(Collection.user.key).doc(uid);

}
