part of 'get_restaurant_product_cubit.dart';

@immutable
abstract class GetRestaurantProductState {}

class GetRestaurantProductInitial extends GetRestaurantProductState {}

class GetRestaurantBranchesProductLoading extends GetRestaurantProductState {}

class GetRestaurantBranchesProductLoaded extends GetRestaurantProductState {
  final List<DataCategories> restaurantBranchesProductDate;
  GetRestaurantBranchesProductLoaded(
      {required this.restaurantBranchesProductDate});
}

class GetRestaurantBranchesProductError extends GetRestaurantProductState {
  final String error;
  GetRestaurantBranchesProductError({required this.error});
}

class GetProductLoading extends GetRestaurantProductState {}

class GetProductLoaded extends GetRestaurantProductState {
  final List<DataProduct> restaurantBranchesProductDate;
  GetProductLoaded({required this.restaurantBranchesProductDate});
}

class GetProductError extends GetRestaurantProductState {
  final String error;
  GetProductError({required this.error});
}

class IncrementsNumberPage extends GetRestaurantProductState {}
