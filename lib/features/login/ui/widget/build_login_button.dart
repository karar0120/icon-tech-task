import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_tech_task/core/helper/strings_manger.dart';
import 'package:icon_tech_task/core/helper/values_manger.dart';
import 'package:icon_tech_task/core/theming/styles.dart';
import 'package:icon_tech_task/core/widget/app_text_button.dart';
import 'package:icon_tech_task/features/login/logic/cubit/login_cubit.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      buttonWidth: AppSize.s190.w,
      buttonHeight: AppSize.s50.w,
      borderRadius: AppSize.s40.r,
      textStyle: TextStyles.font16WhiteSemiBold,
      onPressed: () {
        validateThenDoLogin(context);
      },
      buttonContent: Text(
        AppString.login,
        style: TextStyles.font16WhiteSemiBold,
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState();
    }
  }
}
