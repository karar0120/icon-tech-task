// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_restaurant_products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRestaurantProductsResponse _$GetRestaurantProductsResponseFromJson(
        Map<String, dynamic> json) =>
    GetRestaurantProductsResponse(
      status: json['status'] as bool?,
      msg: json['msg'] as String?,
      data: json['data'] == null
          ? null
          : DataItemsResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetRestaurantProductsResponseToJson(
        GetRestaurantProductsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
    };

DataItemsResponse _$DataItemsResponseFromJson(Map<String, dynamic> json) =>
    DataItemsResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataProductResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataItemsResponseToJson(DataItemsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

DataProductResponse _$DataProductResponseFromJson(Map<String, dynamic> json) =>
    DataProductResponse(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] == null
          ? null
          : ProductTitleResponse.fromJson(
              json['title'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : ProductTitleResponse.fromJson(
              json['description'] as Map<String, dynamic>),
      calories: json['calories'] as String?,
      categoryId: (json['categoryId'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toInt(),
      newPrice: (json['newPrice'] as num?)?.toInt(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImagesResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataProductResponseToJson(
        DataProductResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'calories': instance.calories,
      'price': instance.price,
      'newPrice': instance.newPrice,
      'categoryId': instance.categoryId,
      'images': instance.images,
    };

ProductTitleResponse _$ProductTitleResponseFromJson(
        Map<String, dynamic> json) =>
    ProductTitleResponse(
      ar: json['ar'] as String?,
      en: json['en'] as String?,
    );

Map<String, dynamic> _$ProductTitleResponseToJson(
        ProductTitleResponse instance) =>
    <String, dynamic>{
      'ar': instance.ar,
      'en': instance.en,
    };

ImagesResponse _$ImagesResponseFromJson(Map<String, dynamic> json) =>
    ImagesResponse(
      id: (json['id'] as num?)?.toInt(),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$ImagesResponseToJson(ImagesResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
    };
