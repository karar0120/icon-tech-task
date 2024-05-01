import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:icon_tech_task/core/helper/shared_preferences.dart';
import 'package:icon_tech_task/core/networking/api_service.dart';
import 'package:icon_tech_task/core/networking/dio_factory.dart';
import 'package:icon_tech_task/core/networking/netwotk_info.dart';
import 'package:icon_tech_task/features/login/data/repos/login_repo.dart';
import 'package:icon_tech_task/features/login/logic/cubit/login_cubit.dart';
import 'package:icon_tech_task/features/restaurant/data/repos/irepository.dart';
import 'package:icon_tech_task/features/restaurant/domain/use_case/get_restaurant_branches.dart';
import 'package:icon_tech_task/features/restaurant/presentation/controllers/get_restaurant_branches_cubit/get_restaurant_branches_cubit.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../../features/restaurant/domain/repository/restaurant_repo.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerLazySingleton<NetworkInfo>(() =>
      NetworkInfoImpl(internetConnectionChecker: InternetConnectionChecker()));

  final sharedPreferences = await SharedPreferences.getInstance();

  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

  getIt.registerLazySingleton<AppPreferences>(
      () => AppPreferences(sharedPreferences: getIt()));
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(
        getIt<ApiService>(),
      ));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<LoginRepo>()));
  //get users

  getIt.registerLazySingleton<RestaurantBranchesRepository>(
      () => RestaurantBranchesRepo(
            getIt<ApiService>(),
            getIt<AppPreferences>(),
            getIt<NetworkInfo>(),
          ));
}

Future<void> initGetRestrantModule() async {
  if (!GetIt.I.isRegistered<GetRestaurantBranchesUseCase>()) {
    getIt.registerFactory<GetRestaurantBranchesUseCase>(
        () => GetRestaurantBranchesUseCase(
              restaurantBranchesRepository: getIt(),
            ));
    getIt.registerFactory<GetRestaurantBranchesCubit>(() =>
        GetRestaurantBranchesCubit(
            getRestaurantBranchesUseCase:
                getIt<GetRestaurantBranchesUseCase>()));
  }
}
