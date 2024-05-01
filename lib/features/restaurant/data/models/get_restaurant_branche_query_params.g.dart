// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_restaurant_branche_query_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRestaurantBranchesQueryParams _$GetRestaurantBranchesQueryParamsFromJson(
        Map<String, dynamic> json) =>
    GetRestaurantBranchesQueryParams(
      lat: (json['lat'] as num).toDouble(),
      long: (json['long'] as num).toDouble(),
      companyId: (json['company_id'] as num).toInt(),
    );

Map<String, dynamic> _$GetRestaurantBranchesQueryParamsToJson(
        GetRestaurantBranchesQueryParams instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'long': instance.long,
      'company_id': instance.companyId,
    };
