import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_tech_task/core/helper/extensions.dart';
import 'package:icon_tech_task/core/helper/spacing.dart';
import 'package:icon_tech_task/core/helper/strings_manger.dart';
import 'package:icon_tech_task/core/helper/values_manger.dart';
import 'package:icon_tech_task/core/routing/routes.dart';
import 'package:icon_tech_task/core/theming/color.dart';
import 'package:icon_tech_task/core/theming/styles.dart';
import 'package:icon_tech_task/features/restaurant/domain/entity/restaurant.dart';

class BranchStatusAndButtonDetails extends StatelessWidget {
  const BranchStatusAndButtonDetails({
    super.key,
    required this.data,
  });

  final Data data;

  @override
  Widget build(BuildContext context) {
    return Row(
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
                  data.statusAr,
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
                    context.pushNamed(Routes.getRestaurantCategoriesScreen,
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
    );
  }
}
