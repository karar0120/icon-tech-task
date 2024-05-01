import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_restaurant_products_query_params.g.dart';

@JsonSerializable()
class GetRestaurantProductsQueryParams {
  final int categoryId;
  final int branchId;
  final int paginate;
  final int page;
  GetRestaurantProductsQueryParams({
    required this.categoryId,
    required this.branchId,
    required this.page,
    required this.paginate,
  });

  Map<String, dynamic> toJson() =>
      _$GetRestaurantProductsQueryParamsToJson(this);
}
