import 'package:flutter/material.dart';
import 'package:icon_tech_task/core/helper/spacing.dart';
import 'package:icon_tech_task/core/helper/strings_manger.dart';
import 'package:icon_tech_task/core/helper/values_manger.dart';
import 'package:icon_tech_task/core/theming/color.dart';
import 'package:icon_tech_task/core/theming/styles.dart';
import 'package:icon_tech_task/features/restaurant/domain/entity/restaurant.dart';

class BranchLocationAndDistance extends StatelessWidget {
  const BranchLocationAndDistance({
    super.key,
    required this.data,
  });

  final Data data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                  data.address.ar,
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
                  '${data.distance.toStringAsFixed(2)} /كم',
                  style: TextStyles.font16WhiteMedium
                      .copyWith(color: ColorsManager.dark),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
