import 'package:equatable/equatable.dart';
import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'class_info.dart';

import 'enums/user_type.dart';

part 'user_info.g.dart';

@JsonSerializable()
class UserInfo extends Equatable {

  const UserInfo({
    required this.userId,
    required this.account,
    required this.createdAt,
    required this.userType,
    this.updatedAt,
    this.userName,
    this.userAvatar,
    this.classes = const <ClassInfo>[],
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) => _$UserInfoFromJson(json);

  final String userId;
  final String account;
  final String createdAt;
  final int userType;

  final String? updatedAt;
  final String? userName;
  final String? userAvatar;
  final List<ClassInfo> classes;

  Map<String, dynamic> toJson() => _$UserInfoToJson(this);

  UserType get getUserType => UserType.values.firstWhereOrNull((x) => x.index == userType) ?? UserType.unknown;

  @override
  List<Object?> get props => [userId, account, createdAt, userType, updatedAt, userName, userAvatar, classes];
}