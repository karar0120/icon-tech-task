import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_tech_task/core/helper/spacing.dart';
import 'package:icon_tech_task/core/helper/values_manger.dart';
import 'package:icon_tech_task/core/theming/color.dart';
import 'package:icon_tech_task/features/restaurant/domain/entity/restaurant.dart';
import 'package:icon_tech_task/features/restaurant/presentation/ui/widgets/branch_image_and_title.dart';
import 'package:icon_tech_task/features/restaurant/presentation/ui/widgets/branch_location_and_distance.dart';
import 'package:icon_tech_task/features/restaurant/presentation/ui/widgets/branch_status_and_button_details.dart';

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
          BranchImageAndTitle(data: data),
          Divider(
            color: ColorsManager.gray,
          ),
          BranchLocationAndDistance(data: data),
          verticalSpace(AppSize.s14),
          BranchStatusAndButtonDetails(data: data)
        ],
      ),
    );
  }
}
