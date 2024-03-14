import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'delete_class_info_request.g.dart';

@JsonSerializable()
class DeleteClassInfoRequest extends Equatable {

  const DeleteClassInfoRequest({
    required this.userId,
    required this.classId,
  });

  factory DeleteClassInfoRequest.fromJson(Map<String, dynamic> json) => _$DeleteClassInfoRequestFromJson(json);

  final String userId;
  final String classId;

  Map<String, dynamic> toJson() => _$DeleteClassInfoRequestToJson(this);

  @override
  List<Object> get props => [userId, classId];
}