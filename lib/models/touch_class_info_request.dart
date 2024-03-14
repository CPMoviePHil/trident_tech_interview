import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'touch_class_info_request.g.dart';

@JsonSerializable()
class TouchClassInfoRequest extends Equatable {

  const TouchClassInfoRequest({
    required this.userId,
    required this.className,
    required this.classTime,
  });

  factory TouchClassInfoRequest.fromJson(Map<String, dynamic> json) => _$TouchClassInfoRequestFromJson(json);

  final String userId;
  final String className;
  final String classTime;

  Map<String, dynamic> toJson() => _$TouchClassInfoRequestToJson(this);

  @override
  List<Object?> get props => [userId, className, classTime];
}