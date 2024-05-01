import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icon_tech_task/core/di/dependency_injection.dart';
import 'package:icon_tech_task/core/helper/constances.dart';
import 'package:icon_tech_task/core/routing/routes.dart';
import 'package:icon_tech_task/features/login/logic/cubit/login_cubit.dart';
import 'package:icon_tech_task/features/login/ui/login_screen.dart';
import 'package:icon_tech_task/features/restaurant/presentation/controllers/get_restaurant_branches_cubit/get_restaurant_branches_cubit.dart';
import 'package:icon_tech_task/features/restaurant/presentation/ui/screens/restaurant_branches_on_map.dart';

class AppRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider<LoginCubit>(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginScreen(),
                ));
      case Routes.getRestaurantBanchesScreen:
        initGetRestrantModule();
        return MaterialPageRoute(
            builder: (context) => BlocProvider<GetRestaurantBranchesCubit>(
                  create: (context) => getIt<GetRestaurantBranchesCubit>()
                    ..emitGetRestaurantBranchesState(),
                  child: const RestaurantBranchesOnMap(),
                ));

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(Constances.noRouteFound),
              ),
              body: const Center(child: Text(Constances.noRouteFound)),
            ));
  }
}
