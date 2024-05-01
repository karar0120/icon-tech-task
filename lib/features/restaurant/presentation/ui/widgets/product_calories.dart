import 'package:flutter/material.dart';
import 'package:icon_tech_task/core/helper/spacing.dart';
import 'package:icon_tech_task/core/helper/strings_manger.dart';
import 'package:icon_tech_task/core/helper/values_manger.dart';
import 'package:icon_tech_task/core/theming/color.dart';
import 'package:icon_tech_task/core/theming/styles.dart';
import 'package:icon_tech_task/features/restaurant/domain/entity/products.dart';

class ProductCalories extends StatelessWidget {
  const ProductCalories({
    super.key,
    required this.dataProduct,
  });

  final DataProduct dataProduct;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.local_fire_department,
          color: ColorsManager.gray,
        ),
        horizontalSpace(AppSize.s5),
        Text(
          "${dataProduct.calories} ${AppString.cal}",
          style:
              TextStyles.font14BlueSemiBold.copyWith(color: ColorsManager.gray),
        ),
      ],
    );
  }
}
