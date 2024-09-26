import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  User({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.pictureUrl,
  });

  final String firstName;
  final String lastName;
  final String email;
  @JsonKey(name: "pictureURL")
  final String pictureUrl;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
