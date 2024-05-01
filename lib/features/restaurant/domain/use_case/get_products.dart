import 'package:icon_tech_task/core/helper/base_use_case.dart';
import 'package:icon_tech_task/core/networking/api_result.dart';
import 'package:icon_tech_task/features/restaurant/data/models/get_restaurant_products_query_params.dart';
import 'package:icon_tech_task/features/restaurant/domain/entity/products.dart';
import 'package:icon_tech_task/features/restaurant/domain/repository/restaurant_repo.dart';

class GetProductsUseCase extends BaseUseCase<GetRestaurantProductsQueryParams,
    GetRestaurantProducts> {
  RestaurantBranchesRepository restaurantBranchesRepository;

  GetProductsUseCase({required this.restaurantBranchesRepository});
  @override
  Future<ApiResult<GetRestaurantProducts>> execute(
      GetRestaurantProductsQueryParams input) async {
    return await restaurantBranchesRepository.getRestaurantProducts(
        input.branchId, input.categoryId, input);
  }
}
