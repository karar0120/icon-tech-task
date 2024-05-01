import 'package:icon_tech_task/core/helper/base_use_case.dart';
import 'package:icon_tech_task/core/networking/api_result.dart';
import 'package:icon_tech_task/features/restaurant/data/models/get_restaurant_branche_query_params.dart';
import 'package:icon_tech_task/features/restaurant/domain/entity/restaurant.dart';
import 'package:icon_tech_task/features/restaurant/domain/repository/restaurant_repo.dart';

class GetRestaurantBranchesUseCase
    extends BaseUseCase<GetRestaurantBranchesQueryParams, RestaurantBranches> {
  RestaurantBranchesRepository restaurantBranchesRepository;

  GetRestaurantBranchesUseCase({required this.restaurantBranchesRepository});
  @override
  Future<ApiResult<RestaurantBranches>> execute(
      GetRestaurantBranchesQueryParams input) async {
    return await restaurantBranchesRepository.getRestaurantBranches(input);
  }
}
