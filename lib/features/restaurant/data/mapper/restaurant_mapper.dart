import 'package:icon_tech_task/core/helper/constances.dart';
import 'package:icon_tech_task/features/restaurant/data/models/get_branch_categories_response.dart';
import 'package:icon_tech_task/features/restaurant/data/models/get_restaurant_branches_response.dart';
import 'package:icon_tech_task/features/restaurant/data/models/get_restaurant_products_response.dart';
import 'package:icon_tech_task/features/restaurant/domain/entity/branch_categories.dart';
import 'package:icon_tech_task/features/restaurant/domain/entity/products.dart';
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

extension RestaurantResponseCategoriesMapper
    on GetRestaurantBranchesCategoriesResponse? {
  RestaurantBranchesCategories toDomain() {
    return RestaurantBranchesCategories(
        restaurantBranchesCategories:
            (this?.data?.map((usersResponse) => usersResponse.toDomain()) ??
                    const Iterable.empty())
                .cast<DataCategories>()
                .toList());
  }
}

extension DataCategoriesResponseMapper on DataCategoriesResponse? {
  DataCategories toDomain() {
    return DataCategories(
      id: this?.id.orZero() ?? Constances.zero,
      image: this?.image.orEmpty() ?? Constances.empty,
      title: this!.title.toDomain(),
    );
  }
}

extension TitleCategoriesResponseMapper on TitleCategoriesResponse? {
  TitleCategories toDomain() {
    return TitleCategories(
      en: this?.en.orEmpty() ?? Constances.empty,
      ar: this?.ar.orEmpty() ?? Constances.empty,
    );
  }
}

extension GetRestaurantProductsMapper on GetRestaurantProductsResponse? {
  GetRestaurantProducts toDomain() {
    return GetRestaurantProducts(data: this!.data.toDomain());
  }
}

extension RestaurantProductsDataItemsMapper on DataItemsResponse? {
  DataItems toDomain() {
    return DataItems(
        data: (this?.data?.map((usersResponse) => usersResponse.toDomain()) ??
                const Iterable.empty())
            .cast<DataProduct>()
            .toList());
  }
}

extension DataProductResponseMapper on DataProductResponse? {
  DataProduct toDomain() {
    return DataProduct(
      id: this?.id.orZero() ?? Constances.zero,
      title: this!.title.toDomain(),
      calories: this?.calories.orEmpty() ?? Constances.empty,
      categoryId: this?.categoryId.orZero() ?? Constances.zero,
      description: this!.description.toDomain(),
      images: (this?.images?.map((usersResponse) => usersResponse.toDomain()) ??
              const Iterable.empty())
          .cast<Images>()
          .toList(),
      newPrice: this?.newPrice.orZero() ?? Constances.zero,
      price: this?.price.orZero() ?? Constances.zero,
    );
  }
}

extension ProductTitleResponseMapper on ProductTitleResponse? {
  ProductTitle toDomain() {
    return ProductTitle(
      en: this?.en.orEmpty() ?? Constances.empty,
      ar: this?.ar.orEmpty() ?? Constances.empty,
    );
  }
}

extension ProductImagesResponseMapper on ImagesResponse? {
  Images toDomain() {
    return Images(
      id: this?.id.orZero() ?? Constances.zero,
      image: this?.image.orEmpty() ?? Constances.empty,
    );
  }
}
