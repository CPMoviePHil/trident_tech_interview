import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'touch_user_info_request.g.dart';

@JsonSerializable()
class TouchUserInfoRequest extends Equatable {

  const TouchUserInfoRequest({
    required this.account,
    required this.userType,
    this.userName,
  });

  factory TouchUserInfoRequest.fromJson(Map<String, dynamic> json) => _$TouchUserInfoRequestFromJson(json);

  final String account;
  final String? userName;
  final int userType;

  Map<String, dynamic> toJson() => _$TouchUserInfoRequestToJson(this);

  @override
  List<Object?> get props => [account, userName, userType];
}