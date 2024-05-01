import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_tech_task/core/theming/color.dart';
import 'package:icon_tech_task/core/widget/image_holder.dart';
import 'package:icon_tech_task/features/restaurant/presentation/controllers/get_restaurant_product_cubit/get_restaurant_product_cubit.dart';

import '../../../../../core/helper/values_manger.dart';

class TapBarViews extends StatelessWidget {
  final int brunchId;
  const TapBarViews({super.key, required this.brunchId});

  @override
  Widget build(BuildContext context) {
    final getRestaurantProduct = context.read<GetRestaurantProductCubit>();
    return BlocBuilder<GetRestaurantProductCubit, GetRestaurantProductState>(
      builder: (context, state) {
        return TabBar(
            physics: const BouncingScrollPhysics(),
            indicator: BoxDecoration(
              color: ColorsManager.mainGreen,
              borderRadius: BorderRadius.circular(AppSize.s8.r),
            ),
            unselectedLabelColor: ColorsManager.moreLightGray,
            labelPadding: const EdgeInsets.all(AppPadding.p10),
            onTap: (int index) {
              context
                  .read<GetRestaurantProductCubit>()
                  .setSelectedFilterCategories(
                      getRestaurantProduct.restaurantBranchesDate[index],
                      brunchId);
            },
            isScrollable: true,
            tabs: List.generate(
                getRestaurantProduct.restaurantBranchesDate.length, (index) {
              return SizedBox(
                  height: AppSize.s120.h,
                  child: Tab(
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      elevation: 5,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: AppPadding.p15, right: AppPadding.p15),
                        child: CachedImage(
                            height: AppSize.s140.h,
                            imageUrl: getRestaurantProduct
                                .restaurantBranchesDate[index].image),
                      ),
                    ),
                  ));
            }));
      },
    );
  }
}
