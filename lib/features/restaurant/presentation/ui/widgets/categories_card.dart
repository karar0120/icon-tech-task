import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_tech_task/core/widget/image_holder.dart';
import 'package:icon_tech_task/features/restaurant/presentation/controllers/get_restaurant_product_cubit/get_restaurant_product_cubit.dart';

import '../../../../../core/helper/values_manger.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    super.key,
    required this.index,
    required this.getRestaurantProduct,
  });
  final int index;
  final GetRestaurantProductCubit getRestaurantProduct;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 5,
      color: Colors.white,
      child: Padding(
        padding:
            const EdgeInsets.only(left: AppPadding.p15, right: AppPadding.p15),
        child: CachedImage(
            height: AppSize.s140.h,
            imageUrl: getRestaurantProduct.restaurantBranchesDate[index].image),
      ),
    );
  }
}
