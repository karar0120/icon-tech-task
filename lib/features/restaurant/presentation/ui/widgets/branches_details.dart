import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_tech_task/core/helper/extensions.dart';
import 'package:icon_tech_task/core/helper/spacing.dart';
import 'package:icon_tech_task/core/helper/strings_manger.dart';
import 'package:icon_tech_task/core/helper/values_manger.dart';
import 'package:icon_tech_task/core/routing/routes.dart';
import 'package:icon_tech_task/core/theming/color.dart';
import 'package:icon_tech_task/core/theming/styles.dart';
import 'package:icon_tech_task/core/widget/image_holder.dart';
import 'package:icon_tech_task/features/restaurant/domain/entity/restaurant.dart';

class BranchesDetails extends StatelessWidget {
  final Data data;
  const BranchesDetails({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: AppPadding.p18.w,
        vertical: AppPadding.p18.h,
      ),
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              CachedImage(
                imageUrl: data.image,
              ),
              horizontalSpace(AppSize.s5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.title.en,
                    style: TextStyles.font16WhiteMedium
                        .copyWith(fontSize: 18.sp, color: ColorsManager.dark),
                  ),
                  verticalSpace(AppSize.s5),
                  Text(
                    '${AppString.phone}:  ${data.phone}',
                    style: TextStyles.font16WhiteMedium
                        .copyWith(fontSize: 18.sp, color: ColorsManager.gray),
                  ),
                ],
              )
            ],
          ),
          Divider(
            color: ColorsManager.gray,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(Icons.my_location_outlined),
              horizontalSpace(AppSize.s8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppString.address,
                    style: TextStyles.font16WhiteMedium
                        .copyWith(color: ColorsManager.gray),
                  ),
                  Text(
                    data.address.en,
                    style: TextStyles.font16WhiteMedium
                        .copyWith(color: ColorsManager.dark),
                  ),
                ],
              )
            ],
          ),
          verticalSpace(AppSize.s12),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(Icons.location_on),
              horizontalSpace(AppSize.s8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppString.location,
                    style: TextStyles.font16WhiteMedium
                        .copyWith(color: ColorsManager.gray),
                  ),
                  Text(
                    '${data.distance.toStringAsFixed(2)} /KM',
                    style: TextStyles.font16WhiteMedium
                        .copyWith(color: ColorsManager.dark),
                  ),
                ],
              )
            ],
          ),
          verticalSpace(AppSize.s14),
          Row(
            children: [
              horizontalSpace(AppSize.s12),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorsManager.lighterGray,
                    borderRadius: BorderRadius.circular(AppSize.s25.r),
                    border: Border.all(color: ColorsManager.dark),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(AppPadding.p10),
                    child: Center(
                      child: Text(
                        data.statusEn,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyles.font16WhiteMedium
                            .copyWith(color: ColorsManager.dark),
                      ),
                    ),
                  ),
                ),
              ),
              horizontalSpace(AppSize.s12),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorsManager.lighterGray,
                    borderRadius: BorderRadius.circular(AppSize.s25.r),
                    border: Border.all(color: ColorsManager.dark),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(AppPadding.p10),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          context.pushNamed(
                              Routes.getRestaurantCategoriesScreen,
                              arguments: data.id);
                        },
                        child: Text(
                          AppString.viewProductDetails,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyles.font16WhiteMedium
                              .copyWith(color: ColorsManager.dark),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
