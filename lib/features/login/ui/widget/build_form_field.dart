import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icon_tech_task/core/helper/app_regex.dart';
import 'package:icon_tech_task/core/helper/spacing.dart';
import 'package:icon_tech_task/core/helper/strings_manger.dart';
import 'package:icon_tech_task/core/helper/values_manger.dart';
import 'package:icon_tech_task/core/widget/app_text_form_field.dart';
import 'package:icon_tech_task/features/login/logic/cubit/login_cubit.dart';

import '../../../../core/theming/color.dart';
import '../../../../core/theming/styles.dart';

class BuildFormFieldPhoneAndPassword extends StatefulWidget {
  const BuildFormFieldPhoneAndPassword({super.key});

  @override
  State<BuildFormFieldPhoneAndPassword> createState() =>
      _BuildFormFieldPhoneAndPasswordState();
}

class _BuildFormFieldPhoneAndPasswordState
    extends State<BuildFormFieldPhoneAndPassword> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: AppString.phone,
            controller: context.read<LoginCubit>().phoneTextEditingController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return AppString.pleaseEnterYourPhone;
              }
            },
          ),
          verticalSpace(AppSize.s18),
          AppTextFormField(
            hintText: AppString.password,
            controller:
                context.read<LoginCubit>().passwordTextEditingController,
            isObscureText: isObscureText,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return AppString.pleaseEnterYourPassword;
              }
            },
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: isObscureText
                  ? const Icon(
                      Icons.visibility_off,
                      color: ColorsManager.mainGreen,
                    )
                  : const Icon(
                      Icons.visibility,
                      color: ColorsManager.mainGreen,
                    ),
            ),
          ),
          verticalSpace(AppSize.s18),
          Align(
            alignment: AlignmentDirectional.center,
            child: TextButton(
              onPressed: () {},
              child: Text(
                AppString.forgotPassword,
                style: TextStyles.font16WhiteSemiBold
                    .copyWith(color: ColorsManager.dark),
              ),
            ),
          )
        ],
      ),
    );
  }
}
