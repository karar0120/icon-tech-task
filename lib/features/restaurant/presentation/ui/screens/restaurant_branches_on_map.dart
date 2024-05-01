import 'package:flutter/material.dart';
import 'package:icon_tech_task/features/restaurant/presentation/ui/widgets/map_view.dart';

class RestaurantBranchesOnMap extends StatelessWidget {
  const RestaurantBranchesOnMap({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MapView(),
    );
  }
}
