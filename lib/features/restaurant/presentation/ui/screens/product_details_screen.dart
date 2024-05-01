import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_tech_task/core/helper/spacing.dart';
import 'package:icon_tech_task/core/helper/strings_manger.dart';
import 'package:icon_tech_task/core/helper/values_manger.dart';
import 'package:icon_tech_task/core/theming/color.dart';
import 'package:icon_tech_task/core/theming/styles.dart';
import 'package:icon_tech_task/core/widget/app_bar.dart';
import 'package:icon_tech_task/core/widget/image_holder.dart';
import 'package:icon_tech_task/features/restaurant/domain/entity/products.dart';
import 'package:icon_tech_task/features/restaurant/presentation/ui/widgets/add_notes.dart';
import 'package:icon_tech_task/features/restaurant/presentation/ui/widgets/add_to_cart.dart';
import 'package:icon_tech_task/features/restaurant/presentation/ui/widgets/product_calories.dart';
import 'package:icon_tech_task/features/restaurant/presentation/ui/widgets/product_quantity.dart';

class ProductDetails extends StatelessWidget {
  final DataProduct dataProduct;
  const ProductDetails({super.key, required this.dataProduct});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        Scaffold(
          backgroundColor: ColorsManager.mainGreen,
          resizeToAvoidBottomInset: false,
          appBar: GeneralAppBar(
            title: Text(dataProduct.title.ar),
            centerTitle: true,
          ),
          body: SafeArea(
            child: Column(
              children: [
                verticalSpace(AppSize.s140),
                Expanded(
                    child: Container(
                  width: double.infinity,
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppSize.s40.r),
                        topRight: Radius.circular(AppSize.s40.r)),
                    color: Colors.white,
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          dataProduct.title.ar,
                          style: TextStyles.font16WhiteSemiBold
                              .copyWith(color: ColorsManager.mainGreen),
                        ),
                        verticalSpace(AppSize.s12),
                        ProductCalories(dataProduct: dataProduct),
                        verticalSpace(AppSize.s40),
                        Text(
                          "${dataProduct.price} ${AppString.rs}",
                          style: TextStyles.font24BlueBold
                              .copyWith(color: ColorsManager.gray),
                        ),
                        verticalSpace(AppSize.s40),
                        const ProductQuantity(),
                        verticalSpace(AppSize.s40),
                        const AddNote(),
                        verticalSpace(AppSize.s40),
                        AddToCart(dataProduct: dataProduct)
                      ]),
                )),
              ],
            ),
          ),
        ),
        Positioned(
          top: AppSize.s100.h,
          child: CachedImage(
              height: AppSize.s190.h,
              width: AppSize.s190.w,
              imageUrl: dataProduct.images.first.image),
        )
      ],
    );
  }
}
