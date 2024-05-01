import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'get_restaurant_product_state.dart';

class GetRestaurantProductCubit extends Cubit<GetRestaurantProductState> {
  GetRestaurantProductCubit() : super(GetRestaurantProductInitial());
}
