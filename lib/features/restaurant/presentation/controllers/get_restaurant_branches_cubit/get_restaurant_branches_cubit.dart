import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'get_restaurant_branches_state.dart';

class GetRestaurantBranchesCubit extends Cubit<GetRestaurantBranchesState> {
  GetRestaurantBranchesCubit() : super(GetRestaurantBranchesInitial());
}
