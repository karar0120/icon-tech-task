import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_tech_task/core/helper/spacing.dart';
import 'package:icon_tech_task/core/helper/strings_manger.dart';
import 'package:icon_tech_task/core/helper/values_manger.dart';
import 'package:icon_tech_task/core/theming/color.dart';
import 'package:icon_tech_task/core/theming/styles.dart';
import 'package:icon_tech_task/core/widget/image_holder.dart';
import 'package:icon_tech_task/features/restaurant/domain/entity/restaurant.dart';

class BranchImageAndTitle extends StatelessWidget {
  const BranchImageAndTitle({
    super.key,
    required this.data,
  });

  final Data data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CachedImage(
          imageUrl: data.image,
        ),
        horizontalSpace(AppSize.s5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data.title.ar,
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
    );
  }
}
