import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'edit_class_info_request.g.dart';

@JsonSerializable()
class EditClassInfoRequest extends Equatable {

  const EditClassInfoRequest({
    required this.userId,
    required this.classId,
    this.className,
    this.classTime,
  });

  factory EditClassInfoRequest.fromJson(Map<String, dynamic> json) => _$EditClassInfoRequestFromJson(json);

  final String userId;
  final String classId;
  final String? className;
  final String? classTime;

  Map<String, dynamic> toJson() => _$EditClassInfoRequestToJson(this);

  @override
  List<Object?> get props => [userId, classId, className, classTime];
}