import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:icon_tech_task/core/widget/show_button_sheet.dart';
import 'package:icon_tech_task/features/restaurant/data/models/get_restaurant_branche_query_params.dart';
import 'package:icon_tech_task/features/restaurant/domain/entity/restaurant.dart';
import 'package:icon_tech_task/features/restaurant/domain/use_case/get_restaurant_branches.dart';
import 'package:icon_tech_task/features/restaurant/presentation/ui/widgets/branches_details.dart';

part 'get_restaurant_branches_state.dart';

class GetRestaurantBranchesCubit extends Cubit<GetRestaurantBranchesState> {
  GetRestaurantBranchesUseCase getRestaurantBranchesUseCase;
  GetRestaurantBranchesCubit({required this.getRestaurantBranchesUseCase})
      : super(GetRestaurantBranchesInitial());

  List<Data> restaurantBranchesDate = [];

  var markers = <Marker>{};

  void emitGetRestaurantBranchesState(BuildContext context) async {
    emit(GetRestaurantBranchesLoading());
    final response = await getRestaurantBranchesUseCase.execute(
        GetRestaurantBranchesQueryParams(
            lat: 20.256565, long: 30.556654654, companyId: 3));
    response.when(success: (restaurantBranchesResponse) {
      restaurantBranchesDate
          .addAll(restaurantBranchesResponse.restaurantBranches);
      createMarkers(context);
      emit(GetRestaurantBranchesLoaded(
          restaurantBranchesDate: restaurantBranchesDate));
    }, failure: (error) {
      emit(GetRestaurantBranchesError(error: error.apiErrorModel.msg ?? " "));
    });
  }

  void createMarkers(BuildContext context) {
    for (var element in restaurantBranchesDate) {
      markers.add(
        Marker(
          markerId: MarkerId(element.id.toString()),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
          position: LatLng(
            double.parse(element.lat),
            double.parse(element.long),
          ),
          infoWindow:
              InfoWindow(title: element.title.ar, snippet: element.statusAr),
          onTap: () {
            showCustomBottomSheet(context,
                bottomSheetContent: BranchesDetails(
                  data: element,
                ),
                bottomSheetHeight: 0.45);
          },
        ),
      );
    }
  }
}
