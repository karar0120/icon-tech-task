import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_tech_task/core/helper/spacing.dart';
import 'package:icon_tech_task/core/helper/values_manger.dart';
import 'package:icon_tech_task/core/theming/color.dart';
import 'package:icon_tech_task/features/login/ui/widget/build_form_field.dart';
import 'package:icon_tech_task/features/login/ui/widget/build_login_button.dart';
import 'package:icon_tech_task/features/login/ui/widget/build_sign_up_text.dart';
import 'package:icon_tech_task/features/login/ui/widget/build_text_login.dart';
import 'package:icon_tech_task/features/login/ui/widget/login_bloc_listener.dart';
import 'package:icon_tech_task/features/login/ui/widget/login_title.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.mainGreen,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            const LoginTitle(),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppSize.s40.r),
                      topRight: Radius.circular(AppSize.s40.r)),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const BuildTextLogin(),
                      verticalSpace(36),
                      const BuildFormFieldPhoneAndPassword(),
                      verticalSpace(AppSize.s16),
                      const LoginButton(),
                      verticalSpace(AppSize.s25),
                      const DontHaveAccountText(),
                      verticalSpace(16),
                      const LoginBlocListener(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
