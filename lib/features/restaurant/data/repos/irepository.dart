import 'package:icon_tech_task/core/helper/shared_preferences.dart';
import 'package:icon_tech_task/core/networking/api_error_handler.dart';
import 'package:icon_tech_task/core/networking/api_result.dart';
import 'package:icon_tech_task/core/networking/api_service.dart';
import 'package:icon_tech_task/core/networking/netwotk_info.dart';
import 'package:icon_tech_task/features/restaurant/data/mapper/restaurant_mapper.dart';
import 'package:icon_tech_task/features/restaurant/data/models/get_restaurant_branche_query_params.dart';
import 'package:icon_tech_task/features/restaurant/data/models/get_restaurant_products_query_params.dart';
import 'package:icon_tech_task/features/restaurant/domain/entity/branch_categories.dart';
import 'package:icon_tech_task/features/restaurant/domain/entity/products.dart';
import 'package:icon_tech_task/features/restaurant/domain/entity/restaurant.dart';
import 'package:icon_tech_task/features/restaurant/domain/repository/restaurant_repo.dart';

class RestaurantBranchesRepo implements RestaurantBranchesRepository {
  final ApiService _apiService;
  final AppPreferences _appPreferences;
  final NetworkInfo _networkInfo;
  RestaurantBranchesRepo(
    this._apiService,
    this._appPreferences,
    this._networkInfo,
  );

  @override
  Future<ApiResult<RestaurantBranches>> getRestaurantBranches(
      GetRestaurantBranchesQueryParams getRestaurantBranchesQueryParams) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _apiService
            .getRestaurantBranches(getRestaurantBranchesQueryParams);
        return ApiResult.success(response.toDomain());
      } catch (error) {
        return ApiResult.failure(ErrorHandler.handle(error));
      }
    } else {
      return ApiResult.failure(
          ErrorHandler.handle(DataSource.INTERNAL_SERVER_ERROR.getFailure()));
    }
  }

  @override
  Future<ApiResult<RestaurantBranchesCategories>>
      getRestaurantBranchesCategories(int id) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _apiService.getRestaurantBranchesCategories(id);
        return ApiResult.success(response.toDomain());
      } catch (error) {
        return ApiResult.failure(ErrorHandler.handle(error));
      }
    } else {
      return ApiResult.failure(
          ErrorHandler.handle(DataSource.INTERNAL_SERVER_ERROR.getFailure()));
    }
  }

  @override
  Future<ApiResult<GetRestaurantProducts>> getRestaurantProducts(
      int id,
      int categoryId,
      GetRestaurantProductsQueryParams getRestaurantProductsQueryParams) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _apiService.getRestaurantBranchesProducts(
            id, categoryId, getRestaurantProductsQueryParams);
        return ApiResult.success(response.toDomain());
      } catch (error) {
        return ApiResult.failure(ErrorHandler.handle(error));
      }
    } else {
      return ApiResult.failure(
          ErrorHandler.handle(DataSource.INTERNAL_SERVER_ERROR.getFailure()));
    }
  }
}
