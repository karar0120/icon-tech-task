// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_restaurant_branches_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRestaurantBranchesResponse _$GetRestaurantBranchesResponseFromJson(
        Map<String, dynamic> json) =>
    GetRestaurantBranchesResponse(
      status: json['status'] as bool?,
      msg: json['msg'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetRestaurantBranchesResponseToJson(
        GetRestaurantBranchesResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
    };

DataResponse _$DataResponseFromJson(Map<String, dynamic> json) => DataResponse(
      id: (json['id'] as num?)?.toInt(),
      lat: json['lat'] as String?,
      long: json['long'] as String?,
      phone: json['phone'] as String?,
      statusAr: json['status_ar'] as String?,
      statusEn: json['status_en'] as String?,
      distance: (json['distance'] as num?)?.toDouble(),
      image: json['image'] as String?,
      title: json['title'] == null
          ? null
          : TitleResponse.fromJson(json['title'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : AddressResponse.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataResponseToJson(DataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lat': instance.lat,
      'long': instance.long,
      'phone': instance.phone,
      'status_ar': instance.statusAr,
      'status_en': instance.statusEn,
      'distance': instance.distance,
      'image': instance.image,
      'title': instance.title,
      'address': instance.address,
    };

TitleResponse _$TitleResponseFromJson(Map<String, dynamic> json) =>
    TitleResponse(
      ar: json['ar'] as String?,
      en: json['en'] as String?,
    );

Map<String, dynamic> _$TitleResponseToJson(TitleResponse instance) =>
    <String, dynamic>{
      'ar': instance.ar,
      'en': instance.en,
    };

AddressResponse _$AddressResponseFromJson(Map<String, dynamic> json) =>
    AddressResponse(
      ar: json['ar'] as String?,
      en: json['en'] as String?,
    );

Map<String, dynamic> _$AddressResponseToJson(AddressResponse instance) =>
    <String, dynamic>{
      'ar': instance.ar,
      'en': instance.en,
    };
