import 'package:icon_tech_task/core/helper/base_use_case.dart';
import 'package:icon_tech_task/core/networking/api_result.dart';
import 'package:icon_tech_task/features/restaurant/domain/entity/branch_categories.dart';
import 'package:icon_tech_task/features/restaurant/domain/repository/restaurant_repo.dart';

class GetRestaurantBranchesCategoriesUseCase
    extends BaseUseCase<int, RestaurantBranchesCategories> {
  RestaurantBranchesRepository restaurantBranchesRepository;

  GetRestaurantBranchesCategoriesUseCase(
      {required this.restaurantBranchesRepository});
  @override
  Future<ApiResult<RestaurantBranchesCategories>> execute(int input) async {
    return await restaurantBranchesRepository
        .getRestaurantBranchesCategories(input);
  }
}
