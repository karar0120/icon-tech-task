import 'package:bloc/bloc.dart';
import 'package:icon_tech_task/features/restaurant/data/models/get_restaurant_products_query_params.dart';
import 'package:icon_tech_task/features/restaurant/domain/entity/branch_categories.dart';
import 'package:icon_tech_task/features/restaurant/domain/entity/products.dart';
import 'package:icon_tech_task/features/restaurant/domain/use_case/get_products.dart';
import 'package:icon_tech_task/features/restaurant/domain/use_case/get_restaurant_branches_categories.dart';
import 'package:meta/meta.dart';

part 'get_restaurant_product_state.dart';

class GetRestaurantProductCubit extends Cubit<GetRestaurantProductState> {
  GetRestaurantBranchesCategoriesUseCase getRestaurantBranchesCategoriesUseCase;
  GetProductsUseCase getProductsUseCase;
  GetRestaurantProductCubit({
    required this.getRestaurantBranchesCategoriesUseCase,
    required this.getProductsUseCase,
  }) : super(GetRestaurantProductInitial());

  List<DataCategories> restaurantBranchesDate = [];

  void emitGetRestaurantBranchesState({required int id}) async {
    emit(GetRestaurantBranchesProductLoading());
    final response = await getRestaurantBranchesCategoriesUseCase.execute(id);
    response.when(success: (restaurantBranchesResponse) {
      restaurantBranchesDate
          .addAll(restaurantBranchesResponse.restaurantBranchesCategories);
      emit(GetRestaurantBranchesProductLoaded(
          restaurantBranchesProductDate: restaurantBranchesDate));
    }, failure: (error) {
      emit(GetRestaurantBranchesProductError(
          error: error.apiErrorModel.msg ?? " "));
    });
  }

  DataCategories? _selectedFilterItem;

  DataCategories? get selectedCategoriesItem => _selectedFilterItem;

  void setSelectedFilterCategories(
      DataCategories dataCategories, int branchId) {
    _selectedFilterItem = dataCategories;

    refreshData(branchId: branchId);
  }

  List<DataProduct> products = [];

  int limit = 10;
  int pageNo = 1;
  bool hasMore = true;
  bool isLoaded = false;
  bool isScroll = true;

  void incrementsNumberPage() {
    pageNo++;
    isLoaded = false;
    emit(IncrementsNumberPage());
  }

  Future<void> refreshData({required int branchId}) async {
    products.clear();
    isScroll = false;
    isLoaded = false;
    hasMore = true;
    pageNo = 1;

    emitGetProductsState(branchId: branchId);
  }

  void emitGetProductsState({required int branchId}) async {
    emit(GetProductLoading());
    if (isLoaded) return;
    isLoaded = true;
    isScroll = false;
    final response = await getProductsUseCase.execute(
        GetRestaurantProductsQueryParams(
            branchId: branchId,
            categoryId: _selectedFilterItem?.id ?? 45,
            page: pageNo,
            paginate: limit));
    response.when(success: (animalsResponse) {
      products.addAll(animalsResponse.data.data);
      isLoaded = false;
      incrementsNumberPage();
      if (animalsResponse.data.data.length < limit) {
        hasMore = false;
      }
      isScroll = true;
      emit(GetProductLoaded(restaurantBranchesProductDate: products));
    }, failure: (error) {
      emit(GetProductError(error: error.apiErrorModel.msg ?? " "));
    });
  }
}
