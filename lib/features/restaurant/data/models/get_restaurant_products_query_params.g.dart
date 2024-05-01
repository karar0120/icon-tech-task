// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_restaurant_products_query_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRestaurantProductsQueryParams _$GetRestaurantProductsQueryParamsFromJson(
        Map<String, dynamic> json) =>
    GetRestaurantProductsQueryParams(
      categoryId: (json['categoryId'] as num).toInt(),
      branchId: (json['branchId'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      paginate: (json['paginate'] as num).toInt(),
    );

Map<String, dynamic> _$GetRestaurantProductsQueryParamsToJson(
        GetRestaurantProductsQueryParams instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'branchId': instance.branchId,
      'paginate': instance.paginate,
      'page': instance.page,
    };
