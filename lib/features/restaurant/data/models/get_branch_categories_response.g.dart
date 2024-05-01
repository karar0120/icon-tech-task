// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_branch_categories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRestaurantBranchesCategoriesResponse
    _$GetRestaurantBranchesCategoriesResponseFromJson(
            Map<String, dynamic> json) =>
        GetRestaurantBranchesCategoriesResponse(
          status: json['status'] as bool?,
          msg: json['msg'] as String?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  DataCategoriesResponse.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$GetRestaurantBranchesCategoriesResponseToJson(
        GetRestaurantBranchesCategoriesResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
    };

DataCategoriesResponse _$DataCategoriesResponseFromJson(
        Map<String, dynamic> json) =>
    DataCategoriesResponse(
      id: (json['id'] as num?)?.toInt(),
      image: json['image'] as String?,
      title: json['title'] == null
          ? null
          : TitleCategoriesResponse.fromJson(
              json['title'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataCategoriesResponseToJson(
        DataCategoriesResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'title': instance.title,
    };

TitleCategoriesResponse _$TitleCategoriesResponseFromJson(
        Map<String, dynamic> json) =>
    TitleCategoriesResponse(
      ar: json['ar'] as String?,
      en: json['en'] as String?,
    );

Map<String, dynamic> _$TitleCategoriesResponseToJson(
        TitleCategoriesResponse instance) =>
    <String, dynamic>{
      'ar': instance.ar,
      'en': instance.en,
    };
