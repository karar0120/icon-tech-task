import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_request_body.g.dart';

@JsonSerializable()
class LoginRequestBody {
  final String phone;
  final String password;
  @JsonKey(name: "company_id")
  final int companyId;
  LoginRequestBody({
    required this.phone,
    required this.password,
    required this.companyId,
  });

  Map<String, dynamic> toJson() => _$LoginRequestBodyToJson(this);
}
