import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_tech_task/core/helper/spacing.dart';
import 'package:icon_tech_task/core/helper/values_manger.dart';
import 'package:icon_tech_task/core/theming/color.dart';
import 'package:icon_tech_task/core/theming/styles.dart';
import 'package:icon_tech_task/core/widget/app_text_button.dart';
import 'package:icon_tech_task/core/widget/image_holder.dart';
import 'package:icon_tech_task/features/restaurant/domain/entity/products.dart';

class ProductDetails extends StatelessWidget {
  final DataProduct dataProduct;
  const ProductDetails({super.key, required this.dataProduct});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.mainGreen,
      resizeToAvoidBottomInset: false,
      //backgroundColor: ColorsManager.mainGreen,
      // appBar: GeneralAppBar(
      //   title: Text(dataProduct.title.en),
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: Stack(
          //clipBehavior: Clip.none,
          alignment: AlignmentDirectional.topCenter,
          children: [
            Column(
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
                          dataProduct.title.en,
                          style: TextStyles.font16WhiteSemiBold
                              .copyWith(color: ColorsManager.mainGreen),
                        ),
                        verticalSpace(AppSize.s12),
                        Row(
                          children: [
                            Icon(
                              Icons.local_fire_department,
                              color: ColorsManager.gray,
                            ),
                            horizontalSpace(AppSize.s5),
                            Text(
                              "${dataProduct.calories} cal",
                              style: TextStyles.font14BlueSemiBold
                                  .copyWith(color: ColorsManager.gray),
                            ),
                          ],
                        ),
                        verticalSpace(AppSize.s40),
                        Text(
                          "${dataProduct.price} EGP",
                          style: TextStyles.font24BlueBold
                              .copyWith(color: ColorsManager.gray),
                        ),
                        verticalSpace(AppSize.s40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: AppSize.s50.w,
                              height: AppSize.s50.h,
                              decoration: BoxDecoration(
                                  color: ColorsManager.mainGreen,
                                  borderRadius:
                                      BorderRadius.circular(AppSize.s12.r),
                                  border: Border.all(
                                      color: ColorsManager.mainGreen)),
                              child: const Center(
                                child: Icon(
                                  Icons.minimize,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              width: AppSize.s50.w,
                              height: AppSize.s50.h,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(AppSize.s12.r),
                                  border: Border.all(
                                      color: ColorsManager.mainGreen)),
                              child: Center(
                                  child: Text(
                                '1',
                                style: TextStyles.font24BlackBold,
                              )),
                            ),
                            Container(
                              width: AppSize.s50.w,
                              height: AppSize.s50.h,
                              decoration: BoxDecoration(
                                  color: ColorsManager.mainGreen,
                                  borderRadius:
                                      BorderRadius.circular(AppSize.s12.r),
                                  border: Border.all(
                                      color: ColorsManager.mainGreen)),
                              child: const Center(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                        verticalSpace(AppSize.s40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.chat_bubble_outline_outlined,
                              color: ColorsManager.dark,
                            ),
                            Text(
                              "Add some Note",
                              style: TextStyles.font24BlackBold
                                  .copyWith(fontSize: 18.sp),
                            ),
                            const Spacer(),
                            Text(
                              "Add some Note",
                              style: TextStyles.font24BlackBold.copyWith(
                                  fontSize: 18.sp,
                                  color: ColorsManager.mainGreen),
                            ),
                          ],
                        ),
                        verticalSpace(AppSize.s40),
                        Row(
                          children: [
                            AppTextButton(
                              buttonWidth: AppSize.s50.w,
                              textStyle: TextStyles.font13BlueRegular,
                              buttonHeight: AppSize.s70.h,
                              onPressed: () {},
                              buttonContent: const Icon(
                                Icons.shopping_cart,
                                color: Colors.white,
                              ),
                            ),
                            horizontalSpace(AppSize.s20),
                            Expanded(
                              child: AppTextButton(
                                  buttonHeight: AppSize.s70.h,
                                  buttonContent: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "add to cart",
                                        style: TextStyles.font16WhiteSemiBold,
                                      ),
                                      Text(
                                        "${dataProduct.price} EGP",
                                        style: TextStyles.font16WhiteSemiBold,
                                      ),
                                    ],
                                  ),
                                  textStyle: TextStyles.font16WhiteSemiBold,
                                  onPressed: () {}),
                            ),
                          ],
                        )
                      ]),
                )),
              ],
            ),
            CachedImage(
                height: AppSize.s250.h,
                width: AppSize.s250.w,
                imageUrl: dataProduct.images.first.image)
          ],
        ),
      ),
    );
  }
}
