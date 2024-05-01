part of 'get_restaurant_branches_cubit.dart';

@immutable
abstract class GetRestaurantBranchesState {}

class GetRestaurantBranchesInitial extends GetRestaurantBranchesState {}

class GetRestaurantBranchesLoading extends GetRestaurantBranchesState {}

class GetRestaurantBranchesLoaded extends GetRestaurantBranchesState {
  final List<Data> restaurantBranchesDate;
  GetRestaurantBranchesLoaded({required this.restaurantBranchesDate});
}

class GetRestaurantBranchesError extends GetRestaurantBranchesState {
  final String error;
  GetRestaurantBranchesError({required this.error});
}
