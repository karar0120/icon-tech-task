import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_restaurant_branches_response.g.dart';

@JsonSerializable()
class GetRestaurantBranchesResponse {
  bool? status;
  String? msg;
  @JsonKey(name: 'data')
  List<DataResponse>? data;
  GetRestaurantBranchesResponse(
      {required this.status, required this.msg, required this.data});

  factory GetRestaurantBranchesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetRestaurantBranchesResponseFromJson(json);
}

@JsonSerializable()
class DataResponse {
  int? id;
  String? lat;
  String? long;
  String? phone;
  @JsonKey(name: 'status_ar')
  String? statusAr;
  @JsonKey(name: 'status_en')
  String? statusEn;
  double? distance;
  String? image;
  TitleResponse? title;
  AddressResponse? address;
  DataResponse(
      {this.id,
      this.lat,
      this.long,
      this.phone,
      this.statusAr,
      this.statusEn,
      this.distance,
      this.image,
      this.title,
      this.address});

  factory DataResponse.fromJson(Map<String, dynamic> json) =>
      _$DataResponseFromJson(json);
}

@JsonSerializable()
class TitleResponse {
  String? ar;
  String? en;
  TitleResponse({this.ar, this.en});
  factory TitleResponse.fromJson(Map<String, dynamic> json) =>
      _$TitleResponseFromJson(json);
}

@JsonSerializable()
class AddressResponse {
  String? ar;
  String? en;
  AddressResponse({this.ar, this.en});
  factory AddressResponse.fromJson(Map<String, dynamic> json) =>
      _$AddressResponseFromJson(json);
}
