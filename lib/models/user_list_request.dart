import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_list_request.g.dart';

@JsonSerializable()
class UserListRequest extends Equatable {

  const UserListRequest({required this.userTypes});

  factory UserListRequest.fromJson(Map<String, dynamic> json) => _$UserListRequestFromJson(json);

  final List<int> userTypes;


  Map<String, dynamic> toJson() => _$UserListRequestToJson(this);

  @override
  List<Object> get props => [userTypes];
}