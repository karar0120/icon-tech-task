import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_restaurant_products_response.g.dart';

@JsonSerializable()
class GetRestaurantProductsResponse {
  bool? status;
  String? msg;
  DataItemsResponse? data;
  GetRestaurantProductsResponse(
      {required this.status, required this.msg, required this.data});

  factory GetRestaurantProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetRestaurantProductsResponseFromJson(json);
}

@JsonSerializable()
class DataItemsResponse {
  List<DataProductResponse>? data;
  DataItemsResponse({this.data});
  factory DataItemsResponse.fromJson(Map<String, dynamic> json) =>
      _$DataItemsResponseFromJson(json);
}

@JsonSerializable()
class DataProductResponse {
  int? id;
  ProductTitleResponse? title;
  ProductTitleResponse? description;
  String? calories;
  int? price;
  int? newPrice;
  int? categoryId;
  List<ImagesResponse>? images;
  DataProductResponse({
    this.id,
    this.title,
    this.description,
    this.calories,
    this.categoryId,
    this.price,
    this.newPrice,
    this.images,
  });

  factory DataProductResponse.fromJson(Map<String, dynamic> json) =>
      _$DataProductResponseFromJson(json);
}

@JsonSerializable()
class ProductTitleResponse {
  String? ar;
  String? en;
  ProductTitleResponse({this.ar, this.en});
  factory ProductTitleResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductTitleResponseFromJson(json);
}

@JsonSerializable()
class ImagesResponse {
  int? id;
  String? image;
  ImagesResponse({this.id, this.image});
  factory ImagesResponse.fromJson(Map<String, dynamic> json) =>
      _$ImagesResponseFromJson(json);
}
