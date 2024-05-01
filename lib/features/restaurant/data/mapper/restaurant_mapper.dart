import 'package:icon_tech_task/core/helper/constances.dart';
import 'package:icon_tech_task/features/restaurant/data/models/get_restaurant_branches_response.dart';
import 'package:icon_tech_task/features/restaurant/domain/entity/restaurant.dart';
import 'package:icon_tech_task/core/helper/extensions.dart';

extension RestaurantResponseMapper on GetRestaurantBranchesResponse? {
  RestaurantBranches toDomain() {
    return RestaurantBranches(
        restaurantBranches:
            (this?.data?.map((usersResponse) => usersResponse.toDomain()) ??
                    const Iterable.empty())
                .cast<Data>()
                .toList());
  }
}

extension DataResponseMapper on DataResponse? {
  Data toDomain() {
    return Data(
        id: this?.id.orZero() ?? Constances.zero,
        lat: this?.lat.orEmpty() ?? Constances.empty,
        long: this?.long.orEmpty() ?? Constances.empty,
        phone: this?.phone.orEmpty() ?? Constances.empty,
        statusAr: this?.statusAr.orEmpty() ?? Constances.empty,
        statusEn: this?.statusEn.orEmpty() ?? Constances.empty,
        distance: this?.distance.orZeroPoint() ?? Constances.zeroPoint,
        image: this?.image.orEmpty() ?? Constances.empty,
        title: this!.title.toDomain(),
        address: this!.address.toDomain());
  }
}

extension TitleResponseMapper on TitleResponse? {
  Title toDomain() {
    return Title(
      en: this?.en.orEmpty() ?? Constances.empty,
      ar: this?.ar.orEmpty() ?? Constances.empty,
    );
  }
}

extension AddressResponseMapper on AddressResponse? {
  Address toDomain() {
    return Address(
      en: this?.en.orEmpty() ?? Constances.empty,
      ar: this?.ar.orEmpty() ?? Constances.empty,
    );
  }
}
