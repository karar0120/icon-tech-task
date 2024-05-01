import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:icon_tech_task/features/restaurant/presentation/controllers/get_restaurant_branches_cubit/get_restaurant_branches_cubit.dart';

class MapView extends StatelessWidget {
  const MapView({super.key});

  @override
  Widget build(BuildContext context) {
    final getRestaurantBranchesCubit =
        context.read<GetRestaurantBranchesCubit>();
    return BlocBuilder<GetRestaurantBranchesCubit, GetRestaurantBranchesState>(
        builder: (context, state) {
      return getRestaurantBranchesCubit.restaurantBranchesDate.isNotEmpty
          ? GoogleMap(
              initialCameraPosition: CameraPosition(
                  target: LatLng(
                    double.parse(getRestaurantBranchesCubit
                        .restaurantBranchesDate.first.lat),
                    double.parse(getRestaurantBranchesCubit
                        .restaurantBranchesDate.first.long),
                  ),
                  zoom: 13),
              markers: getRestaurantBranchesCubit.markers,
              zoomControlsEnabled: false,
            )
          : const Center(
              child: CircularProgressIndicator(),
            );
    });
  }
}
