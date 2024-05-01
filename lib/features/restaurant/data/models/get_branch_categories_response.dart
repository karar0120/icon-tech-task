import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_branch_categories_response.g.dart';

@JsonSerializable()
class GetRestaurantBranchesCategoriesResponse {
  bool? status;
  String? msg;
  @JsonKey(name: 'data')
  List<DataCategoriesResponse>? data;
  GetRestaurantBranchesCategoriesResponse(
      {required this.status, required this.msg, required this.data});

  factory GetRestaurantBranchesCategoriesResponse.fromJson(
          Map<String, dynamic> json) =>
      _$GetRestaurantBranchesCategoriesResponseFromJson(json);
}

@JsonSerializable()
class DataCategoriesResponse {
  int? id;
  String? image;
  TitleCategoriesResponse? title;
  DataCategoriesResponse({
    this.id,
    this.image,
    this.title,
  });

  factory DataCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$DataCategoriesResponseFromJson(json);
}

@JsonSerializable()
class TitleCategoriesResponse {
  String? ar;
  String? en;
  TitleCategoriesResponse({this.ar, this.en});
  factory TitleCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$TitleCategoriesResponseFromJson(json);
}
