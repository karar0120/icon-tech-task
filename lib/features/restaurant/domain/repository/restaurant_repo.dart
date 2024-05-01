import 'package:icon_tech_task/core/networking/api_result.dart';
import 'package:icon_tech_task/features/restaurant/data/models/get_restaurant_branche_query_params.dart';
import 'package:icon_tech_task/features/restaurant/domain/entity/restaurant.dart';

abstract class RestaurantBranchesRepository {
  Future<ApiResult<RestaurantBranches>> getRestaurantBranches(
      GetRestaurantBranchesQueryParams getRestaurantBranchesQueryParams);
}
