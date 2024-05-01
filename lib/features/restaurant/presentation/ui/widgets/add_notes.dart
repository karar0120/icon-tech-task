import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_tech_task/core/helper/spacing.dart';
import 'package:icon_tech_task/core/helper/strings_manger.dart';
import 'package:icon_tech_task/core/helper/values_manger.dart';
import 'package:icon_tech_task/core/theming/color.dart';
import 'package:icon_tech_task/core/theming/styles.dart';

class AddNote extends StatelessWidget {
  const AddNote({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(
          Icons.chat_bubble_outline_outlined,
          color: ColorsManager.dark,
        ),
        horizontalSpace(AppSize.s8),
        Text(
          AppString.addSomeNote,
          style: TextStyles.font24BlackBold.copyWith(fontSize: 18.sp),
        ),
        const Spacer(),
        Text(
          AppString.addNote,
          style: TextStyles.font24BlackBold
              .copyWith(fontSize: 18.sp, color: ColorsManager.mainGreen),
        ),
      ],
    );
  }
}
