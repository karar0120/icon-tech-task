import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_restaurant_branche_query_params.g.dart';

@JsonSerializable()
class GetRestaurantBranchesQueryParams {
  final double lat;
  final double long;
  @JsonKey(name: 'company_id')
  final int companyId;
  GetRestaurantBranchesQueryParams(
      {required this.lat, required this.long, required this.companyId});

  Map<String, dynamic> toJson() =>
      _$GetRestaurantBranchesQueryParamsToJson(this);
}
