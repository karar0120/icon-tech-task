import 'package:dio/dio.dart';
import 'package:icon_tech_task/features/login/data/models/login_request_body.dart';
import 'package:icon_tech_task/features/login/data/models/login_response.dart';
import 'package:icon_tech_task/features/restaurant/data/models/get_branch_categories_response.dart';
import 'package:icon_tech_task/features/restaurant/data/models/get_restaurant_branche_query_params.dart';
import 'package:icon_tech_task/features/restaurant/data/models/get_restaurant_branches_response.dart';
import 'package:icon_tech_task/features/restaurant/data/models/get_restaurant_products_query_params.dart';
import 'package:icon_tech_task/features/restaurant/data/models/get_restaurant_products_response.dart';
import 'package:retrofit/retrofit.dart';
import 'api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @GET(ApiConstants.restaurantBranchesOnMap)
  Future<GetRestaurantBranchesResponse> getRestaurantBranches(
    @Queries()
    GetRestaurantBranchesQueryParams getRestaurantBranchesQueryParams,
  );

  @GET(ApiConstants.restaurantBranchesCategories)
  Future<GetRestaurantBranchesCategoriesResponse>
      getRestaurantBranchesCategories(
    @Path('branch_id') int id,
  );

  @GET(ApiConstants.restaurantBranchesProduct)
  Future<GetRestaurantProductsResponse> getRestaurantBranchesProducts(
    @Path('branch_id') int id,
    @Path('category_id') int categoryId,
    @Queries()
    GetRestaurantProductsQueryParams getRestaurantProductsQueryParams,
  );
}
