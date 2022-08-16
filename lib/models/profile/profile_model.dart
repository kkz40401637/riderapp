import 'package:json_annotation/json_annotation.dart';
part 'profile_model.g.dart';

@JsonSerializable()
class ProfileModel {
  final String adminUserId;
  final String name;
  final String phone;
  final String? email;
  final String? createdDate;

  ProfileModel({
    required this.adminUserId,
    required this.name,
    required this.phone,
    required this.email,
    required this.createdDate,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileModelToJson(this);
}

