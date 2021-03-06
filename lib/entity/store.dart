import 'package:key/logic/repository/base_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'store.freezed.dart';
part 'store.g.dart';

@freezed
class Store with _$Store {
  const Store._();
  const factory Store({
    required String storeName,
    required String location,
    List<String?>? Images,
    String? introduce,
    String? twitterAccount,
    String? instaAcount,
    String? advertisementImage,
    String? advertisementMessage,
    String? emailInvitationMessage,
    List<String>? cooperativeStores, 
  }) = _Store;

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
}
